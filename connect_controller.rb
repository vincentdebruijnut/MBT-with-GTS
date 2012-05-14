require 'socket'
require 'lib/simple_builder_extension'

# The interface to GRATiS and GRATiS-Min, a University of Twente master thesis project.
# Allows a remote application to send an sts for testing or initiate a connection
# to perform an on-the-fly test run with a remote model.
class ConnectController < ApplicationController
  
  # Interface for SCRP models.
  # Send an STS in JSON as the model for the test run.
  # This builds the STS and starts the testing.
  def test_scrp
    begin
      sts_json = params[:_json]
      if not sts_json.present?
        render :text => "No JSON received", :status => 404
      else
        # Build model
        sts = json_to_sts(sts_json)
        # add missing labels
        RESPONSES.each do |response|
          sts.add_new_label(response, :response) if sts.labels[[response, :response, nil]].nil?
        end
        fork do
          # Start testing
          do_tests({:remote_model => sts, :strategy => :local_transition_coverage,
                    :max_depth => 50, :limit => 5})
        end
        render :text => "Test run started", :status => 200
      end
    rescue
      logger.error("An error occurred: #{$!}")
      render :text => "An error occurred: #{$!}", :status => 500
    end
  end
  
  
  # Gets the response label of the given code.
  def self.get_response_label(code)
    if code == "230_endtot"
      return 'C230_ACCOUNT_ENDTOTAL'
    elsif code == "230_close"
      return 'C230_ACCOUNT_CLOSED'
    else
      response = RESPONSES.find {|lbl| lbl[1..3] == code}
      if response.nil? && code =~ /\d\d\d/
        raise "Cannot find response with code: #{code}"
      else
        return response
      end
    end
  end
  
  RESPONSES = ['C201_RESUMED_OPERATION',
          'C202_CASH_REGISTER_RESTORED',
          'C210_VAR_RETURN',
          'C211_ART_IDENTIFICATION',
          'C212_ART_DESCRIPTION',
          'C213_ART_TEXT',
          'C214_CERT_DATA',
          'C220_SCRP_READY',
          'C230_ACCOUNT_ENDTOTAL',
          'C230_ACCOUNT_CLOSED',
          'C231_ACCOUNT_OPENED',
          'C232_ART_REGISTERED',
          'C233_ACCOUNT_IDLED',
          'C240_TRANS_SUCCEEDED',
          'C242_TRANS_SUCCEEDED',
          'C250_SIGNED_OFF',
          'C251_SIGNED_ON',
          'C260_DATA_PRINTED',
          'C261_HTML_TEXT',
          'C450_SIGNING_REJECTED',
          'C500_UNKNOWN_COMMAND',
          'C501_SYNTAX_ERROR',
          'C502_COMMAND_FAILED',
          'C503_ERROR_STATE',
          'C510_NO_SUCH_VAR',
          'C511_NO_SUCH_ART',
          'C512_NO_STABLE_WEIGHT',
          'C530_NO_SUCH_ACCOUNT',
          'C531_INVALID_ACCOUNT_STATE',
          'C540_NO_SUCH_TRANS',
          'C541_TRANS_BUSY',
          'C542_TRANS_FAILED',
          'C550_NOT_SIGNED_ON',
          'C551_AUTH_FAILED',
          'C560_CR_PRINTING_INACTIVE',
          'C561_SFU_PRINTING_INACTIVE',
          'C900_TIMEOUT']
  
  private
  
  # Start testing
  def do_tests(ref_data)
    begin
      ENV['TESTER'] = "Scrp::Tester"
      driver = Driver.new(TestConfig.new(ref_data))
      @covered_states = Set.new
      @covered_transitions = Set.new
      @verdict = :passed
      @lines = []
      @results = 0
      
      time = Time.now
      
      driver.execute_test_run do |test_result|
        @states = test_result.annotations.values.first.states
        @transitions = test_result.annotations.values.first.transitions
        @covered_states = @covered_states.merge(@states.select {|_, covered| covered})
        @covered_transitions = @covered_transitions.merge(@transitions.select {|_, covered| covered})
        @state_coverage_pct = percentage(@covered_states.size, @states.size)
        @transition_coverage_pct = percentage(@covered_transitions.size, @transitions.size)
        
        verdict = test_result.verdict
        if verdict == :error
          @verdict = :error
        elsif verdict == :failed and @verdict != :error
          @verdict = :failed
        end
        @lines << "<h2>Test Run #{@results+=1}</h2>"
        @lines << "<p>Verdict: #{verdict}</p>"
        @lines << "<p>State coverage: #{@state_coverage_pct}</p>"
        @lines << "<p>Transition coverage: #{@transition_coverage_pct}</p>"
        #if verdict == :error || verdict == :failed
          @lines << "<table>"
          @lines << "<thead>"
          TM::Sts::TestResult.table_header_fields(nil, :detail).each do |line|
            @lines << "<tr>#{line}</tr>"
          end
          @lines << "</thead><tbody>"
          test_result.to_html(nil, true).each do |line|
            @lines << "<tr>#{line}</tr>"
          end
          @lines << "</tbody></table>"
        #end
      end
    rescue
      logger.error("An error occurred: #{$!}")
    ensure
      if driver.nil?
        return
      end
      annotation = driver.tester.annotations.values.first
      least_visited = annotation.transition_coverage.min_by {|_, v| v}
      average_visited = (annotation.transition_coverage.inject(0) {|sum, arr| sum+arr.last}).to_f / annotation.transition_coverage.size
      File.open('test_result.html', 'w') do |f|
        f.puts "<html>"
        f.puts "<head>"
        f.puts "<title>Test Results</title>"
        f.puts "<style type=\"text/css\">"
        f.puts "table {"
        f.puts "  border-collapse: collapse;"
        f.puts "  border: 1px solid black;"
        f.puts "  text-align: center;}"
        f.puts "td {"
        f.puts "  padding: 5px;"
        f.puts "  border-right: 1px solid black;}"
        f.puts "th {"
        f.puts "  padding: 5px;"
        f.puts "  border-right: 1px solid black;"
        f.puts "  border-bottom: 1px solid black;}"
        f.puts "</style>"
        f.puts "</head><body>"
        f.puts "<h1>Test Runs</h1>"
        f.puts "<p>Finished in: <b>#{Time.now-time} seconds</b></p>"
        f.puts "<p>Overall verdict: <b>#{@verdict}</b></p>"
        f.puts "<p>Total state coverage: <b>#{@state_coverage_pct}%</b></p>"
        f.puts "<p>Total transition coverage: <b>#{@transition_coverage_pct}%</b></p>"
        f.puts "<p>Least visited transition: <b>'#{least_visited.first}' - #{least_visited.last} times</b></p>"
        f.puts "<p>Average transition visits: <b>#{average_visited}</b></p>"
        @lines.each do |line|
          f.puts line
        end
        f.puts "</body></html>"
      end  
      puts "DONE"
    end
  end
  
  # calculate a percentage
  def percentage(denominator, numerator)
    (denominator * BigDecimal('100.0') / numerator).round(2).to_f
  end
 
  # Builds an STS based on the given hash.
  # @param [Hash] json The hash which is used to build the sts. The format of this hash is:
  # {start: "label start location", lVars: {<location variable>}, relations: [<switch relation>], gates: {<gate>}, iVars: {<interaction variable>}}
  # <location variable> = "label": {type: "variable type", init: initial value}
  # <switch relation> = {source: "label source location", gate: "label gate", target: "label target location", guard: "guard", update: "update mapping"}
  # <gate> = "label": {type: "?/!", iVars: ["label interaction variable"]}
  # <interaction variable> = "label": "variable type"
  # interaction variable label is null for tau transition.
  # @return [SymbolicTransitionSystem] The built STS.
  def json_to_sts(json)
    c210_variables = ActiveSupport::OrderedHash.new
    STS::SimpleBuilderExtension.build 'sts' do
      type_hsh = {'int' => @sts.sts_types[:integer], 'bool' => @sts.sts_types[:boolean], 'string' => @sts.sts_types[:string]}
      # Location variables
      json['lVars'].each_pair do |lbl, value|
        type = type_hsh[value['type']]
        @sts.add_new_state_variable(lbl, type, value['init'])
      end
      # Interaction variables
      json['iVars'].each_pair do |lbl, var_type|
        @sts.add_new_interaction_variable(lbl, type_hsh[var_type])
      end
      # Gates
      json['gates'].each_pair do |lbl, value|
        if value['type'] == '?'
          label(lbl, :stimulus, value['iVars'])
        else
          label(ConnectController::get_response_label(lbl), :response, value['iVars'])
        end
      end
      # Switch Relations
      json['relations'].group_by {|hsh| hsh['source']}.each_pair do |source, group|
        state source do
          group.each do |hsh|
            lbl = ConnectController::get_response_label(hsh['gate']) || hsh['gate']
            on lbl => hsh['target'], :if => hsh['guard'], :update => hsh['update']
          end
        end
      end
      # Start Location
      @sts.start_states << @sts.states[json['start']]
    end
  end
  
end

class TestConfig
  
  attr_reader :tester_ref_data

  def initialize(ref_data)
    @tester_ref_data = ref_data
  end

  def suite_version
    self
  end
end
