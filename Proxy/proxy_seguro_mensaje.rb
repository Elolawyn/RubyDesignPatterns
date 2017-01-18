require 'etc'

class ProxySeguroMensaje

	def initialize(cuentabanco, propietario)
		@cuentabanco = cuentabanco
		@propietario = propietario
	end
	
	def method_missing(nombre, *argumentos)
		comprobar_acceso
		@cuentabanco.send(nombre, *argumentos)
	end
	
	def comprobar_acceso
		if Etc.getlogin != @propietario
			raise "Acceso ilegal: #{Etc.getlogin} no puede acceder a la cuenta."
		end
	end
end
