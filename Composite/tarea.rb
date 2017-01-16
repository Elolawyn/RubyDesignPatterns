class Tarea

	attr_accessor :nombre, :padre
	
	def initialize(nombre)
		@nombre = nombre
		@padre = nil
	end
	
	def tiempo_requerido
		0.0
	end
	
	def count_tareas_hoja
		1
	end
	
end
