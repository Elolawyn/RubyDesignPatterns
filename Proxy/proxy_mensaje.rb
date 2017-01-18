class ProxyMensaje

	def initialize(cuenta)
		@cuenta = cuenta
	end
	
	# Al no encontrar definidos en ProxyMensaje los métodos llamados, los envía a la clase CuentaBanco almacenada
	def method_missing(nombre, *argumentos)
		puts("Delegando mensaje #{nombre} al sujeto.")
		@cuenta.send(nombre, *argumentos)
	end
end
