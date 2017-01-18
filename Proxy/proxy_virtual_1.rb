require_relative "cuenta_banco"

class ProxyVirtual

	def initialize(balance = 0)
		@balance = balance
	end
	
	def balance
		s = sujeto
		s.balance
	end
	
	def deposito(dinero)
		s = sujeto
		s.deposito(dinero)
	end
	
	def retirada(dinero)
		s = sujeto
		s.retirada(dinero)
	end
	
	def sujeto
		# Si @sujeto no es nil, devuelve @sujeto. Si lo es, crea el objeto @sujeto
		@sujeto || (@sujeto = CuentaBanco.new(@balance))
	end
	
end
