require 'singleton'

class Logger
	
	# Realiza una instanciación tardía de la clase Logger, sólo cuando hace falta
	include Singleton
	
	def initialize
		@mensajes = []
	end
	
	def log(mensaje)
		@mensajes << mensaje
	end
	
	def imprimir
		@mensajes.each do |mensaje|
			puts mensaje
		end	
	end
	
end
