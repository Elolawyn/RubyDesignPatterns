require_relative "parser"

parser = Parser.new "y (nombre *.png) (nombre *frame*)"
parser.expresion.evaluar("/boot").each do |p|
	puts p
end

puts 
