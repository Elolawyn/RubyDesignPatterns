require_relative "informe"

class InformePlano < Informe

	def imprimir_cabecera
    puts "**** #{@title} ****"
    puts
	end
	
	def imprimir_linea(line)
		puts line
	end
	
end
