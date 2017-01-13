class Informe

	def initialize
		@titulo = 'Informe mensual'
		@texto = ['Todo va bien', 'Muy bien']
	end
	
	# ------------- Parte que no varía -----------------
	#
	# Proceso principal de realización de un informe
	
	def imprimir
		imprimir_comienzo
		imprimir_cabecera
		imprimir_comienzo_cuerpo
		@texto.each do |linea|
			imprimir_linea linea
		end
		imprimir_fin_cuerpo
		imprimir_fin
	end
	
	# -------------- Parte variable --------------------
	#
	# Métodos que deben ser sobrescritos
	
	def imprimir_cabecera
		raise 'Llamada a método abstracto: imprimir_cabecera'
	end
	
	def imprimir_linea(line)
		raise 'Llamada a método abstracto: imprimir_linea'
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
