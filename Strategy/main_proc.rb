require_relative "informe_proc"
require_relative "impresor_html_proc"

puts
puts "Informe HTML"
puts

informe = InformeProc.new &IMPRESOR_HTML
informe.imprimir

puts
puts "Informe en texto plano"
puts

# Estrategia como proc on the fly
informe = InformeProc.new do |contexto|
	puts "***** #{contexto.titulo} *****"
	contexto.texto.each do |linea|
		puts linea
	end
end
informe.imprimir

puts
