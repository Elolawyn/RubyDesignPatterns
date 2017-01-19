class DecoradorEscritor

	def initialize(escritor_real)
		@escritor_real = escritor_real
	end
	
	def imprimir_linea(linea)
		@escritor_real.imprimir_linea(linea)
	end
	
	def posicion
		@escritor_real.posicion
	end
	
	def retroceder
		@escritor_real.retroceder
	end
	
	def cerrar
		@escritor_real.cerrar
	end
	
end
