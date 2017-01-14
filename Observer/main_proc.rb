require_relative "empleado_proc"

empleado = EmpleadoProc.new("Pepe", "Jefe de equipo", 2000)
empleado.add_observador do |empleado|
	puts("Se ha producido un cambio en el salario de #{empleado.nombre}")
	puts("Su salario es #{empleado.salario}")
end
empleado.salario = 3000
