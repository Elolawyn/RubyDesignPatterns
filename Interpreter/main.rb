require_relative "buscador"

puts ""

expresion = FicherosTodos.new
expresion.evaluar("/boot").each do |p|
	puts p
end

puts ""

expresion = FicherosNombre.new("*.png")
expresion.evaluar("/boot").each do |p|
	puts p
end

puts ""

expresion = FicherosEditables.new()
expresion.evaluar("/boot").each do |p|
	puts p
end

puts ""

expresion = Or.new(FicherosNombre.new("*.png"), FicherosNombre.new("*.bin"))
expresion.evaluar("/boot").each do |p|
	puts p
end

puts ""

expresion = And.new(FicherosNombre.new("*.png"), FicherosNombre.new("*frame*"))
expresion.evaluar("/boot").each do |p|
	puts p
end
