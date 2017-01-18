class Proxy

	def initialize(cuentabanco)
		@cuentabanco = cuentabanco
	end
	
	def balance
		@cuentabanco.balance
	end
	
	def deposito(dinero)
		@cuentabanco.deposito(dinero)
	end
	
	def retirada(dinero)
		@cuentabanco.retirada(dinero)
	end
	
end
