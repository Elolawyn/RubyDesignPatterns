require_relative "tarea"

class TareaHojaUno < Tarea

	def initialize
		super('Tarea hoja 1')
	end
	
	def tiempo_requerido
		1.0 # Se necesita un minuto para realizar la tarea hoja 1
	end
	
	def ejecutar_tarea
		puts @nombre
	end
end
