class Desencriptador

	def initialize(clave)
		@clave = clave
	end

	def desencriptar(lector, escritor)
		indice_clave = 0
		while not lector.eof?
			caracter_desencriptado = lector.getbyte ^ @clave.getbyte(indice_clave)
			escritor.putc(caracter_desencriptado.chr('UTF-8'))
			indice_clave = (indice_clave + 1) % @clave.size
		end
	end
end
