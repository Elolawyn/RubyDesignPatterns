require_relative "tarea_hoja_1"
require_relative "tarea_hoja_2"
require_relative "tarea_compuesta"

class TareaCompuestaUno < TareaCompuesta

	def initialize
		super('Hacer tarea compuesta')
		@subtareas = []
		add_subtarea TareaHojaUno.new
		add_subtarea TareaHojaDos.new
	end

	def ejecutar_tarea
		@subtareas.each do |tarea|
			tarea.ejecutar_tarea
		end
		puts @nombre
	end
end
