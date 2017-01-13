require_relative "informe"

class InformePlano < Informe

	def imprimir_cabecera
		puts "**** #{@titulo} ****"
		puts
	end
	
	def imprimir_linea(linea)
		puts linea
	end
	
end
