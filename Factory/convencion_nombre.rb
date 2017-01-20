class IOFactoria

	def initialize(formato)
		@clase_lector = self.class.const_get("#{formato}Lector")
		@clase_escritor = self.class.const_get("#{formato}Escritor")
	end
	
	def nuevo_lector
		@clase_lector.new
	end
	
	def nuevo_escritor
		@clase_escritor.new
	end
	
end

class HTMLLector

	def initialize()
		puts "Nueva clase HTMLLector"
	end
	
end

class HTMLEscritor

	def initialize()
		puts "Nueva clase HTMLEscritor"
	end
	
end

class PDFLector

	def initialize()
		puts "Nueva clase PDFLector"
	end
	
end

class PDFEscritor

	def initialize()
		puts "Nueva clase PDFEscritor"
	end
	
end
