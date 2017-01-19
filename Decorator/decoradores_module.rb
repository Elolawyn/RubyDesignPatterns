require_relative "decorador_module"

class EscritorNumerosLineas < DecoradorEscritor

	def initialize(escritor_real)
		super(escritor_real)
		@numero_linea = 1
	end
	
	def imprimir_linea(linea)
		@escritor_real.imprimir_linea("#{@numero_linea}: #{linea}")
		@numero_linea += 1
	end
	
end

class EscritorChecksum < DecoradorEscritor
	attr_reader :check_sum
	
	def initialize(escritor_real)
		super(escritor_real)
		@check_sum = 0
	end
	
	def imprimir_linea(linea)
		linea.each_byte {|byte| @check_sum = (@check_sum + byte) % 256 }
		@check_sum += "\n".ord % 256
		@escritor_real.imprimir_linea(linea)
	end
end

class EscritorTimeStamp < DecoradorEscritor

	def imprimir_linea(linea)
		@escritor_real.imprimir_linea("#{Time.new}: #{linea}")
	end
	
end
