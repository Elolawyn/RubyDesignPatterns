require_relative "tarea"

class TareaHojaDos < Tarea

	def initialize
		super('Tarea hoja 2')
	end
	
	def tiempo_requerido
		3.0 # Se necesitan tres minutos para realizar la tarea hoja 2
	end
	
	def ejecutar_tarea
		puts @nombre
	end
end
