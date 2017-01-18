require 'etc'

class ProxySeguro

	def initialize(cuentabanco, propietario)
		@cuentabanco = cuentabanco
		@propietario = propietario
	end
	
	def balance
		comprobar_acceso
		@cuentabanco.balance
	end
	
	def deposito(dinero)
		comprobar_acceso
		@cuentabanco.deposito(dinero)
	end
	
	def retirada(dinero)
		comprobar_acceso
		@cuentabanco.retirada(dinero)
	end
	
	def comprobar_acceso
		if Etc.getlogin != @propietario
			raise "Acceso ilegal: #{Etc.getlogin} no puede acceder a la cuenta."
		end
	end
end
