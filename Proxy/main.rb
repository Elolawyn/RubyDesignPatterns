require_relative 'proxy'
require_relative 'cuenta_banco'

cuenta = CuentaBanco.new 100
cuenta.deposito 50
cuenta.retirada 10

puts cuenta.balance

proxy = Proxy.new cuenta
proxy.deposito 50
proxy.retirada 10

puts proxy.balance
