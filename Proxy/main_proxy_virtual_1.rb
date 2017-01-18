require_relative 'proxy_virtual_1'

cuenta = ProxyVirtual.new 100
cuenta.deposito 50
cuenta.retirada 10

puts cuenta.balance

