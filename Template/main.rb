require_relative "informe_html"
require_relative "informe_plano"

puts
puts "Informe genérico"
puts

begin
	informe = Informe.new
	informe.imprimir
rescue Exception => e  
	puts e.message  
	puts e.backtrace.inspect
end

puts
puts "Informe HTML"
puts

informe = InformeHTML.new
informe.imprimir

puts
puts "Informe en texto plano"
puts

informe = InformePlano.new
informe.imprimir

puts
