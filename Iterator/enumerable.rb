class Cuenta

	attr_accessor :nombre, :balance
	
	def initialize(nombre, balance)
		@nombre = nombre
		@balance = balance
	end
	
	def <=>(otra_cuenta)
		balance <=> otra_cuenta.balance
	end
end
	
class ListaCuentas

	include Enumerable
	
	def initialize
		@cuentas = []
	end
	
	def each(&bloque)
		@cuentas.each(&bloque)
	end
	
	def add_cuenta(cuenta)
		@cuentas << cuenta
	end
end
