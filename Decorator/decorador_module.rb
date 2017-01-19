require 'forwardable'

class DecoradorEscritor
	extend Forwardable
	
	def_delegators :@escritor_real, :imprimir_linea, :retroceder, :posicion, :cerrar
	
	def initialize(escritor_real)
		@escritor_real = escritor_real
	end
	
end
