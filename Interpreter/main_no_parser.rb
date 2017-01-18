require_relative "buscador"

puts ""

todos().evaluar("/boot").each do |p|
	puts p
end

puts ""

nombre("*.png").evaluar("/boot").each do |p|
	puts p
end

puts ""

editables().evaluar("/boot").each do |p|
	puts p
end

puts ""

(nombre("*.png") | nombre("*.bin")).evaluar("/boot").each do |p|
	puts p
end

puts ""

(nombre("*.png") & nombre("*frame*")).evaluar("/boot").each do |p|
	puts p
end
