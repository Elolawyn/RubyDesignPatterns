require_relative "impresor_html"
require_relative "impresor_plano"
require_relative "informe"

puts
puts "Informe HTML"
puts

informe = Informe.new(ImpresorHTML.new)
informe.imprimir

puts
puts "Informe en texto plano"
puts

informe.impresor = ImpresorPlano.new
informe.imprimir

puts
