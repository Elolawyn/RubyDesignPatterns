require_relative "tarea"

class TareaCompuesta < Tarea

	def initialize(nombre)
		super(nombre)
		@subtareas = []
	end
	
	# Addicción de subtareas
	
	def add_subtarea(tarea)
		@subtareas << tarea
		tarea.padre = self
	end
	
	def <<(tarea)
		@subtareas << tarea
		tarea.padre = self
	end
	
	# Borrado de subtareas
	
	def borrar_subtarea(tarea)
		@subtareas.delete tarea
		tarea.padre = nil
	end
	
	# Acceso a subtareas
	
	def [](indice)
		@subtareas[indice]
	end
	
	# Modificación de subtareas
	
	def []=(indice, nuevo_valor)
		@subtareas[indice] = nuevo_valor
	end
	
	# Tiempo de realización de la tarea es la suma del de las subtareas
	
	def tiempo_requerido
		tiempo = 0.0
		@subtareas.each do |tarea|
			tiempo += tarea.tiempo_requerido
		end
		tiempo
	end
	
	# Número de tareas hoja de la tarea
	
	def count_tareas_hoja
		total = 0
		@subtareas.each do |tarea|
			total += tarea.count_tareas_hoja
		end
		total
	end
	
end
