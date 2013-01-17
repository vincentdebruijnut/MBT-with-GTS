d = Dir.new('./img/scrp')
files = Hash.new {|hash, key| hash[key] = []}
d.each do |file|
  next if file == '.' || file == '..' || file.include?('extended')
  i = file.inspect.gsub("\"", "")
  f = i.index('.')
  first = i[0..f-1]
  #puts first, i[f+1..-1]
  f2 = i[f+1..-1].index('.')
  if f2 != nil
    second = i[f+1..f+f2]
    #puts i, i[f+1+f2..-1]
    if i[f+1+f2..-1] == '.tikz'
      files[first] << i
    else
      files[first+'.'+second] << i
    end
  else
    files[first] << i
  end
end

def humanize(str, opt="")
  str = str.gsub('.tikz', '')
  str.gsub!('')
  str.gsub!('.', ' ')
  str.gsub!('_', ' ')
  str.capitalize!
  str.gsub!(/ (.)/) {|s| " #{s[1..-1].capitalize}"}
  str.gsub!(opt, "") if !opt.empty?
  str.strip
end

puts files.keys.inspect
val = files.delete('start-scrp')
files['initialize'] += val
val = files.delete('get_variable_request')
files['get_variable'] += val


files = files.to_a.sort_by {|key, value| key}

files.each do |key, arr|
  arr.sort! do |x1, x2| 
    w = !(x1 =~ /request/).nil?
    y = !(x2 =~ /request/).nil?
    case [w,y]
    when [true, true], [false, false]
      x1 <=> x2
    when [true, false]
      -1
    when [false, true]
      1
    end
  end
end
=begin
File.open('caption_script.rb', 'w') do |f|
  f.puts 'captions = {'
  i = 0
  files.each do |key, arr|
    arr.each_with_index do |file, i2|
      if i == files.size-1 && i2 == arr.size-1
        str = "\"#{file}\" => \"\""
      else
        str = "\"#{file}\" => \"\","
      end
      f.puts str
    end
    i+=1
  end
  f.puts '}'
end
=end
captions = {
"account.article_registration.request_exist.tikz" => "?ARTREG_EXIST",
"account.article_registration.request_nexist.tikz" => "?ARTREG_NEXIST",
"account.article_registration.displays.tikz" => "!212",
"account.article_registration.invalid_ss_on.tikz" => "!531",
"account.article_registration.no_such_article.tikz" => "!511",
"account.article_registration.success.tikz" => "!232",
"account.article_return.request_exist.tikz" => "?ARTRET_EXIST",
"account.article_return.request_nexist.tikz" => "?ARTRET_NEXIST",
"account.article_return.displays.tikz" => "!212",
"account.article_return.invalid_ss_on.tikz" => "!531",
"account.article_return.no_such_article.tikz" => "!511",
"account.article_return.no_such_article_registered.tikz" => "!511",
"account.article_return.success.tikz" => "!232",
"account.close.request.tikz" => "?CLOSE",
"account.close.displays.tikz" => "!212",
"account.close.invalid_ss_on.tikz" => "!531",
"account.close.success.tikz" => "!230",
"account.ending.request.tikz" => "?IDLE",
"account.ending.invalid_ss_on.tikz" => "!531",
"account.ending.success.tikz" => "!233",
"account.endtotal.request.tikz" => "?ENDTOT",
"account.endtotal.displays.tikz" => "!212",
"account.endtotal.invalid_ss_on.tikz" => "!531",
"account.endtotal.success.tikz" => "!230",
"account.open.request.tikz" => "?OPEN",
"account.open.request_exist.tikz" => "?OPEN_EXIST",
"account.open.request_nexist.tikz" => "?OPEN_NEXIST",
"account.open.invalid_ss_on.tikz" => "!531",
"account.open.no_such_account.tikz" => "!530",
"account.open.success.tikz" => "!231",
"account.stamp_registration.request.tikz" => "?STAMPREG",
"account.stamp_registration.displays.tikz" => "!212",
"account.stamp_registration.invalid_ss_on.tikz" => "!531",
"account.stamp_registration.no_such_article.tikz" => "!511",
"account.stamp_registration.success.tikz" => "!232",
"account.trans.request_tm_bank.tikz" => "?TRANS",
"account.trans.request_tm_cash.tikz" => "?TRANS",
"account.trans.request_tm_store.tikz" => "?TRANS",
"account.trans.invalid_no_closed.tikz" => "!531",
"account.trans.success_tm_bank_cash.tikz" => "!240",
"account.trans.success_tm_store.tikz" => "!240",
"artid.request_exist.tikz" => "?ARTID_EXIST",
"artid.request_nexist.tikz" => "?ARTID_NEXIST",
"artid.no_such_article.tikz" => "!511",
"artid.success_213.tikz" => "!213",
"general_responses.not_signed_on.tikz" => "!550",
"general_responses.syntax_error.tikz" => "!501",
"general_responses.timeout.tikz" => "!900",
"general_responses.unknown.request.tikz" => "?UNKNOWN",
"general_responses.unknown.response.tikz" => "!501",
"get_variable_request.tikz" => "?GET",
"get_variable.no_such_variable.tikz" => "!510",
"get_variable.success.tikz" => "!210",
"initialize.ready.tikz" => "!220",
"start-scrp.tikz" => "Initial graph",
"print.request_exist.tikz" => "?PRINT_EXIST",
"print.request_nexist.tikz" => "?PRINT_NEXIST",
"print.inactive.tikz" => "!560",
"print.invalid.tikz" => "!531",
"print.no_such_account.tikz" => "!530",
"print.success.tikz" => "!260",
"receipt.request.tikz" => "?RECEIPT",
"receipt.html_text.tikz" => "!261",
"receipt.invalid.tikz" => "!531",
"receipt.printing_inactive.tikz" => "!561",
"receipt.success.tikz" => "!261",
"receipt.hardcopy.request_exist.tikz" => "?RHCOPY_EXIST",
"receipt.hardcopy.request_nexist.tikz" => "?RHCOPY_NEXIST",
"receipt.hardcopy.inactive.tikz" => "!560",
"receipt.hardcopy.no_such_account.tikz" => "!530",
"receipt.hardcopy.success.tikz" => "!260",
"resetcr.request.tikz" => "?RESETCR",
"resetcr.invalid.tikz" => "!531",
"resetcr.success.tikz" => "!202",
"resume.request.tikz" => "?RESUME",
"resume.error.tikz" => "!503",
"resume.success.tikz" => "!201",
"resume.success_no_error.tikz" => "!201",
"signoff.request.tikz" => "?SIGNOFF",
"signoff.invalid.tikz" => "!450",
"signoff.success.tikz" => "!250",
"signon.request_exist.tikz" => "?SIGNON_EXIST",
"signon.request_nexist.tikz" => "?SIGNON_NEXIST",
"signon.signing_auth_failed.tikz" => "!551",
"signon.signing_rejected.tikz" => "!450",
"signon.success.tikz" => "!251"
}

File.open('scrp_figures.tex', 'w') do |f|
  bool = false
  files.each do |key, arr|
    if bool
      f.puts '\\newpage'
    else
      bool = true
    end
    f.puts '\\begin{figure}[ht]'
    f.puts '\\begin{center}'
    ding = true
    arr.each_with_index do |file, i|
      if i == arr.size-1
        text = ""
      elsif ding
        text = "\\hspace{20px}"
      else
        text = "\\\\"
      end
      if !captions.include?(file)
        raise "Not included in captions: #{file}"
      end
      f.puts "\\subfloat[#{captions[file].gsub('_', '\\_')}]{\\input{./img/scrp/#{file}}}#{text}"
      ding = !ding
    end
    f.puts "\\caption{#{humanize(key)}}"
    f.puts '\\end{center}'
    f.puts '\\end{figure}'
    f.puts ''
  end
end

