class AdaptadorString

	def initialize(string)
		@string = string
		@posicion = 0
	end
	
	def getbyte
		if @posicion >= @string.length
			raise EOFError
		end
		caracter = @string.getbyte(@posicion)
		@posicion += 1
		return caracter
	end
	
	def eof?
		return @posicion >= @string.length
	end
end
