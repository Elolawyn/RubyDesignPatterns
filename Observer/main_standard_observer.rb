require_relative "empleado_standard_observer"
require_relative "departamento"

empleado = Empleado.new("Pepe", "Jefe de equipo", 2000)
empleado.add_observer(Departamento.new, :actualizar) # Nombre de la función en la clase observadora
empleado.salario = 3000
