module EscritorTimeStamp

	def imprimir_linea(linea)
		super("#{Time.new}: #{linea}")
	end
	
end

module EscritorNumerosLineas

	attr_reader :numero_linea

	def imprimir_linea(linea)
		@numero_linea = 1 unless @numero_linea
		super("#{@numero_linea}: #{linea}")
		@numero_linea += 1
	end
	
end
