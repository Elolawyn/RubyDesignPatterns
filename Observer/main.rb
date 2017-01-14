require_relative "empleado"
require_relative "departamento"

empleado = Empleado.new("Pepe", "Jefe de equipo", 2000)
empleado.add_observador Departamento.new
empleado.salario = 3000
