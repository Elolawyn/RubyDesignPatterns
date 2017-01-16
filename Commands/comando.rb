class Comando

	attr_reader :descripcion
	
	def initialize(descripcion)
		@descripcion = descripcion
	end
	
	def ejecutar
	end
	
	def deshacer
	end

end

class ComandoCompuesto < Comando

	def initialize
		@comandos = []
	end
	
	def add_comando(comando)
		@comandos << comando
	end
	
	def ejecutar
		@comandos.each do |comando|
			comando.ejecutar
		end
	end
	
	def deshacer
		@comandos.reverse.each do |comando|
			comando.deshacer
		end
	end
	
	def descripcion
		descripcion = ''
		@comandos.each do |comando|
			descripcion += comando.descripcion + "\n"
		end
		descripcion
	end
end
