require_relative "texto"
require_relative "impresor"

# Mejor no realizar esto

class Texto
	def mensaje
		@string
	end
end

texto = Texto.new("Texto a imprimir")

impresor = Impresor.new texto
impresor.imprimir
