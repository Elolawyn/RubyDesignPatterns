class Logger
	
	def initialize
		@mensajes = []
	end

	# Hace una instanciación de la clase Logger al comenzar el programa
	# Variable de clase, variable única para todas las instancias de la clase
	@@instancia = Logger.new

	# Acceso a la instancia
	def self.instancia
		@@instancia
	end
	
	def log(mensaje)
		@mensajes << mensaje
	end
	
	def imprimir
		@mensajes.each do |mensaje|
			puts mensaje
		end	
	end
	
	# Hacemos que no se pueda crear otra instancia ocultando el método new
	private_class_method :new
end
