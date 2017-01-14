require 'observer'

class Empleado

	include Observable
	
	attr_reader :nombre
	attr_accessor :titulo, :salario
	
	def initialize(nombre, titulo, salario)
		super()
		@nombre = nombre
		@titulo = titulo
		@salario = salario
	end
	
	def salario=(nuevo_salario)
		@salario = nuevo_salario
		# Requiere ejecutar changed primero para activar un booleano
		# indicando que efectivamente se ha producido un cambio
		changed
		notify_observers self
	end

end
