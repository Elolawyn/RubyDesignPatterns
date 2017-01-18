class ProxyVirtual

	def initialize(&bloque)
		@bloque = bloque
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
		# Si @sujeto no es nil, devuelve @sujeto. Si lo es, ejecuta el bloque de código
		@sujeto || (@sujeto = @bloque.call)
	end
	
end
