sts = '$\begin{array}{lcl}
      \Locations & = & \{l_0, l_1, l_2, l_3\} \\
      \initialLocation & = & l_0 \\
      \LocationVariables & = & \{I, P, T_1, T_2, T_3, D_1, D_2, D_3\} \\
      \initializationFunction & = & \{T_1 \mapsto 0, T_2 \mapsto 0, T_3 \mapsto 0, D_1 \mapsto 1.0, D_2 \mapsto 1.0, D_3 \mapsto 1.0\} \\
      \InteractionVariables & = & \{i, d_1, d_2, d_3, q_1, q_2, q_3, p, b, r\} \\
      \Gates & = & \{?o(i,d), ?p(i,p), !po(b), !pp(b, r)\} \\
      \Switches & = & \{l_0\xrightarrow{?o(i,d), d_1=`coke" \land d_2=`beer" \land d_3=`wine" \land i \geq 1 \land i \leq 3, \{I \mapsto i, P \mapsto 0.8*q_1+1.5*q_2+2.1*q_3\}}l_1, \\
      & & l_1\xrightarrow{!po(b), I=1\land b=T_1+P*D_1, \{T_1 \mapsto b\}}l_0,\\
      & & l_1\xrightarrow{!po(b), I=2\land b=T_2+P*D_2, \{T_2 \mapsto b\}}l_0,\\
      & & l_1\xrightarrow{!po(b), I=3\land b=T_3+P*D_3, \{T_3 \mapsto b\}}l_0,\\
      & & l_0\xrightarrow{?p(i,p), i \geq 1 \land i \leq 3, \{I \mapsto i, P \mapsto p\}}l_2,\\
      & & l_2\xrightarrow{!pp(b,r),I=1\land b=max(T_1-P, 0)\land r=max(-T_1+P,0),\{T_1 \mapsto b\}}l_0,\\
      & & l_2\xrightarrow{!pp(b,r),I=2\land b=max(T_2-P, 0)\land r=max(-T_2+P,0),\{T_2 \mapsto b\}}l_0, \\
      & & l_2\xrightarrow{!pp(b,r),I=3\land b=max(T_3-P, 0)\land r=max(-T_3+P,0),\{T_2 \mapsto b\}}l_0, \\
      & & l_0\xrightarrow{?d(i), i \geq 1 \land i \leq 3,\{I \mapsto i\}}l_3, \\
      & & l_3\xrightarrow{!pd(b), I=1\land b=T_1+50.0, \{T_1 \mapsto b, D_1 \mapsto 0.9\}}l_0, \\
      & & l_3\xrightarrow{!pd(b), I=2\land b=T_2+50.0, \{T_2 \mapsto b, D_2 \mapsto 0.9\}}l_0, \\
      & & l_3\xrightarrow{!pd(b), I=3\land b=T_3+50.0, \{T_3 \mapsto b, D_3 \mapsto 0.9\}}l_0 \}
      \end{array}$
'

locations = sts.match(/Locations \& = \& \\\{([^}]+)\\\}/)[1].split(',').map {|l| l.strip}
puts locations.inspect

location_variables = sts.match(/LocationVariables \& = \& \\\{([^}]*)\\\}/)[1].split(',').map {|l| l.strip}
#puts location_variables.inspect

init = sts.match(/initializationFunction \& = \& \\\{([^}]+)\\\}/)[1]
#puts init.inspect

interaction_variables = sts.match(/InteractionVariables \& = \& \\\{([^}]*)\\\}/)[1].split(',').map {|l| l.strip}
#puts interaction_variables.inspect

gates = sts.match(/Gates \& = \& \\\{([^}]*)\\\}/)[1].split(',').map {|l| l.strip}
#puts gates.inspect

switch_relations = sts.scan(/xrightarrow\{(.+)\}[^}]+$/).flatten
#puts switch_relations.inspect

operators = [/mapsto/, /lor/, /land/, /neq/, /</, /=/, /-/, /\+/, /%/, /neg/, /max/, /geq/, /leq/]
operands = [/true/, /false/, /`[a-z]+"/]

operands = operands + location_variables + interaction_variables

all_operators = []
switch_relations.each {|s| s.each {|part| operators.each {|o| all_operators += part.scan(o).flatten}}}
operators.each {|o| all_operators += init.scan(o).flatten}
n1 = all_operators.uniq.size
puts "OPS:",all_operators.uniq.inspect

N1 = all_operators.size
puts N1

all_operands = []
switch_relations.each {|s| s.each {|part| operands.each {|o| all_operands += part.scan(o).flatten}}}
operands.each {|o| all_operands += init.scan(o).flatten}
n2 = all_operands.uniq.size
puts all_operands.uniq.inspect

n2 += 2
N2 = all_operands.size  + switch_relations.size + locations.size

puts "n1:", n1
puts "n2:", n2
puts "N1:", N1
puts "N2:", N2
puts "volume:", (N1+N2)*Math.log(n1+n2)/Math.log(2)