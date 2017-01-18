require_relative 'proxy_virtual_2'
require_relative 'cuenta_banco'

cuenta = ProxyVirtual.new {
	CuentaBanco.new 100
}

cuenta.deposito 50
cuenta.retirada 10

puts cuenta.balance

