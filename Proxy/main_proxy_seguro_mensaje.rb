require_relative 'proxy_seguro_mensaje'
require_relative 'cuenta_banco'

begin
	cuenta = CuentaBanco.new 100
	cuenta.deposito 50
	cuenta.retirada 10

	puts cuenta.balance

	proxy = ProxySeguroMensaje.new cuenta, "raul"
	proxy.deposito 50
	proxy.retirada 10

	puts proxy.balance
	
	proxy = ProxySeguroMensaje.new cuenta, "pepe"
	proxy.deposito 50
	proxy.retirada 10

	puts proxy.balance
rescue Exception => e  
	puts e.message  
	puts e.backtrace.inspect  
end
