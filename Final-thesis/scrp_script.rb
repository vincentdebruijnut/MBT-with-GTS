require File.expand_path("../config/environment", __FILE__)

# See https://github.com/rspec/rspec-core/issues/551
require 'rspec/autorun'

require 'rspec/rails'


model = ""
['scrp_labels', 'scrp_helper_methods', 'scrp'].each do |file|
  File.open('model/'+file+'.rb', 'r') do |f|
    while (line = f.gets)
      model += line
    end
  end
end

sts = STS::Builder.build("model_name", model, {})

def guardify(guard)
  new_guard = guard.gsub(/&&/, "\\land")
  new_guard.gsub!('||', '\\lor')
  new_guard.gsub!('==', '=')
  new_guard.gsub!(/"([^"]+)"/, '``\1"')
  new_guard.gsub!('variable_value', 'cr_value')
  new_guard.gsub!('return_variable_name', 'cr_variable')
  new_guard.gsub!('get_variable_name', 'var_name')
  new_guard.gsub!('stamp_reg', 'amount')
  #new_guard.gsub!('<=', '\\leq')
  #new_guard.gsub!('>=', '\\geq')
  "\\mathit{#{new_guard}}"
end

def labelfy(label)
  gate = label.name
  if (a = gate.match(/(\d\d\d)/))
    gate = a[0]
  end
  if label.kind == STS::Label::UNOBSERVABLE
    gate = '\\tau'
  elsif label.response?
    gate = '!' + gate
  else
    gate = '?' + gate
  end
  gate
end

def print(file, text)
  file.puts text.gsub('_', '\\_')
end

sts.stss.each do |sts|
  puts sts.vars.size
  puts sts.states.size
  states = sts.states.values.sort_by {|s| s.name}
  transitions = states.reduce([]) {|acc, s| acc + s.transitions.to_a}
  puts transitions.size
  ivars = sts.labels.values.reduce(Set.new) {|acc, l| acc.merge(l.parameters)}
  highest_state = states.map(&:name).select {|n| n =~ /_\d+/}.max_by {|s| s[1..-1].to_i}
  named_states = states.map(&:name).select {|n| !(n =~ /_\d+/)}
  File.open("iosts_scrp.tex", 'w') do |f|
    print(f,"\\begin{tabular}{lcp{350px}}")
    print(f,"$\\Locations$ & = & $\\{\\mathit{s0...s#{highest_state[1..-1]}, #{named_states.join(',')}}\\} $\\\\")
    print(f,"$\\initialLocation$ & = & $#{sts.start_states.map(&:name).join(',\\:')} $\\\\")
    print(f,"$\\LocationVariables$ & = & $\\{#{sts.vars.values.map(&:name).join(',\\:')}\\} $\\\\")
    print(f,"$\\initializationFunction$ & = & $\\{#{sts.vars.values.map{|v| "#{v.name} \\mapsto #{v.value}"}.join(',\\:')}\\} $\\\\")
    print(f,"$\\InteractionVariables$ & = & $\\{#{ivars.map(&:name).join(',\\:')}\\} $\\\\")
    print(f,"$\\Gates$ & = & \\{#{sts.labels.values.map {|l| labelfy(l)}.join(', ')}\\} \\\\")
    bool = true
    count = 0
    transs = ""
    lines = 0
    transitions.each do |transition|
      if lines == 16 || ((lines-16) % 38 == 0)
        print(f,"\\end{tabular}")
        print(f, "")
        print(f,"\\begin{tabular}{lcp{350px}}")
      end
      trans = "\\mathit{#{transition.source.to_s.gsub('_', 's')}}\\xrightarrow{\\mathit{#{labelfy(transition.label)}}," \
              " #{transition.guard.present? ? guardify(transition.guard) : "\\mathit{true}"}," \
              " \\{#{transition.update}\\}}\\mathit{#{transition.target.to_s.gsub('_', 's')}}"
      if bool
        lines += 1
        print(f,"\\Switches & = & $\\{#{trans},$ \\\\")
        bool = false
      elsif !transition.guard.present? && count < 3
        transs += "#{trans},"
        count += 1
      elsif !transition.guard.present?
        print(f,"& & $#{transs}$ \\\\")
        lines += 1
        transs = "#{trans},"
        count = 1
      else
        if transs.present?
          print(f,"& & $#{transs}$ \\\\")
          count = 0
          transs = ""
          lines += 1
        end
        if lines == 16 || ((lines-16) % 38 == 0)
          print(f,"\\end{tabular}")
          print(f, "")
          print(f,"\\begin{tabular}{lcp{350px}}")
        end
        lines +=1
        print(f,"& & $#{trans},$ \\\\")
      end
    end
    print(f,"\\}")
    print(f,"\\end{tabular}")
  end
end