class Encriptador

	def initialize(clave)
		@clave = clave
	end
	
	def encriptar(lector, escritor)
		indice_clave = 0
		while not lector.eof?
			caracter_encriptado = lector.getbyte ^ @clave.getbyte(indice_clave)
			escritor.putc(caracter_encriptado)
			indice_clave = (indice_clave + 1) % @clave.size
		end
	end
end
