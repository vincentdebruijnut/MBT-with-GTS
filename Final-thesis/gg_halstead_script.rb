model = ''
d = Dir.new('./img/boardgame')
all_files = []
d.each do |file|
  all_files << file
end

files = Hash.new {|hash, key| hash[key] = []}
d.each do |file|
  next if file == '.' || file == '..' || file.include?('extended') #&&
      #all_files.find {|f| f.include?('extended') && f.include?(file.gsub('.tikz', ''))})
  puts file
  File.open('./img/boardgame/'+file, 'r') do |f|
    while (line = f.gets)
      model += line
    end
  end
end

nodes = model.scan(/^\\node\[([^\]]+)\] \([^\)]+\)  at \([^\)]+\) \{(.+)\};$/)
puts nodes.inspect

edges = model.scan(/^\\path\[([^\]]+)\]\s*\([^\)]+\)\s*-- node\[[^\]]+\]\{(.+)\} \([^\)]+\) ;$/)
puts edges.inspect

operators = [/dellab/, /newlab/, /deledge/, /newedge/, /color\{\\green\}/, /color\{\\red\}/, 
    /color\{\\blue\}/, /\$<\$/, /\$>\$/, /:=/, /\s=/, /[^,]\s\$(-)\$/, /\s\$\+\$/, /%/, /!=/,
    /@/, /^add$/, /^mul$/, /^sub$/, /^max$/, /^neg$/]
operands = [/true/, /false/, /\d+\.?\d+?/, /"[A-Za-z\\_]+"/, /\\ml\{([A-Za-z\\_]+)\}/, 
    /textbf\{([A-Za-z\\_]+)\}/, /textit\{(?:\$(?:-|\+)\$ )?([A-Za-z\\_]+\d*)\}/, /rolls/, 
    /textit\{(?:(?:(?:\$-\$)|\!) )?\?\[([^\]]+)\]\}/, /textit\{! ([A-Za-z\\_]+\d*)\}/]

all_operators = []
edges.each {|e| e.each {|part| operators.each {|o| all_operators += part.scan(o).flatten}}}
nodes.each {|n| n.each {|part| operators.each {|o| all_operators += part.scan(o).flatten}}}
puts all_operators.uniq.inspect
n1 = all_operators.uniq.size
if all_operators.include?('color{\\blue}')
  n1 -= 1 if all_operators.include?('deledge')
  n1 -= 1 if all_operators.include?('dellab')
elsif all_operators.include?('deledge')
  n1 -= 1 if all_operators.include?('dellab')
end
if all_operators.include?('color{\\green}')
  n1 -= 1 if all_operators.include?('newedge')
  n1 -= 1 if all_operators.include?('newlab')
elsif all_operators.include?('newedge')
  n1 -= 1 if all_operators.include?('newlab')
end
N1 = all_operators.size
puts n1, N1

not_these_ones = ['\\textit{!=}', '\\textit{=}', '@', 'real:sum', 'add', 'mul',
  'sub', 'max', 'neg']

all_operands = []
edges.each {|e| e.each {|part| operands.each {|o| all_operands += part.scan(o).flatten}}}
nodes.each {|n| n.each {|part| operands.each do |o|
  things = part.scan(o).flatten
  comma_things = things.select {|c| c.include?(',')}
  comma_things.each {|c| things.delete(c)}
  splitted = []
  comma_things.each do |t|
    splitted += t.split(',')
  end
  all_operands += things + splitted
end}}
edges.each {|e| all_operands << e.last if !not_these_ones.include?(e.last)}
puts all_operands.uniq.inspect
n2 = all_operands.uniq.size + 2
N2 = all_operands.size + nodes.size + edges.size
puts n2, N2

puts "n1:", n1
puts "n2:", n2
puts "N1:", N1
puts "N2:", N2
puts "volume:", (N1+N2)*Math.log(n1+n2)/Math.log(2)