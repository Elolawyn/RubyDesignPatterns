class CuentaBanco

	attr_reader :balance
	
	def initialize(dinero_inicial = 0)
		@balance = dinero_inicial
	end
	
	def deposito(dinero)
		@balance += dinero
	end
	
	def retirada(dinero)
		@balance -= dinero
	end
end
