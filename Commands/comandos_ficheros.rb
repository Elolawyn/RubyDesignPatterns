require_relative "comando"
require "fileutils"

class CrearFichero < Comando

	def initialize(ruta, contenido)
		super("Crear fichero: #{ruta}")
		@ruta = ruta
		@contenido = contenido
	end
	
	def ejecutar
		f = File.open(@ruta, "w")
		f.write(@contenido)
		f.close
	end
	
	def deshacer
		File.delete(@ruta)
	end
	
end

class BorrarFichero < Comando

	def initialize(ruta)
		super("Borrar fichero: #{ruta}")
		@ruta = ruta
	end
	
	def ejecutar
		if File.exists?(@ruta)
			@contenidos = File.read(@ruta)
		end
		File.delete(@ruta)
	end
	
	def deshacer
		if @contenidos
			f = File.open(@ruta,"w")
			f.write(@contenidos)
			f.close
		end
	end
	
end

class CopiarFichero < Comando

	def initialize(origen, destino)
		super("Copiar fichero: #{origen} to #{destino}")
		@origen = origen
		@destino = destino
	end
	
	def ejecutar
		if File.exists?(@destino)
			@contenidos = File.read(@destino)
		end
		FileUtils.copy(@origen, @destino)
	end
	
	def deshacer
		if @contenidos
			f = File.open(@destino,"w")
			f.write(@contenidos)
			f.close
		else
			File.delete(@destino)
		end
	end
end
