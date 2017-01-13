require_relative "informe"

class InformeHTML < Informe
	
	def imprimir_cabecera
		puts '  <head>'
    puts "    <title>#{@title}</title>"
    puts '  </head>'
	end
	
	def imprimir_linea(line)
		puts "    <p>#{line}</p>"
	end
	
	def imprimir_comienzo
	  puts '<html>'
	end
	
	def imprimir_comienzo_cuerpo
	  puts '  <body>'
	end
	
	def imprimir_fin_cuerpo
	  puts '  </body>'
	end
	
	def imprimir_fin
	  puts '</html>'
	end
	
end
