require_relative 'proxy_mensaje'
require_relative 'cuenta_banco'

proxy = ProxyMensaje.new(CuentaBanco.new(100))
proxy.deposito 50
proxy.retirada 10

puts proxy.balance
