class Informe

	def initialize
		@title = 'Informe mensual'
		@text = ['Todo va bien', 'Muy bien']
	end
	
	# ------------- Parte que no varía -----------------
  #
	# Proceso principal de realización de un informe
	
	def imprimir
		imprimir_comienzo
		imprimir_cabecera
		imprimir_comienzo_cuerpo
		@text.each do |line|
			imprimir_linea line
		end
		imprimir_fin_cuerpo
		imprimir_fin
	end
	
	# -------------- Parte variable --------------------
	#
	# Métodos que deben ser sobrescritos
	
	def imprimir_cabecera
		raise 'Called abstract method: output_head'
	end
	
	def imprimir_linea(line)
		raise 'Called abstract method: output_line'
	end
	
	# Hook Methods
	#
	# Métodos que no tienen que ser sobrescritos. Tienen un comportamiento por defecto
	
	def imprimir_comienzo
	end
	
	def imprimir_comienzo_cuerpo
	end
	
	def imprimir_fin_cuerpo
	end
	
	def imprimir_fin
	end

end
