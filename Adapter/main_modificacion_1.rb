require_relative "texto"
require_relative "impresor"

texto = Texto.new("Texto a imprimir")

class << texto
	def mensaje
		@string
	end
end

impresor = Impresor.new texto
impresor.imprimir
