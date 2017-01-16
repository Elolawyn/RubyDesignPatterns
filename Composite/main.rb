require_relative "tarea_hoja_1"
require_relative "tarea_hoja_2"
require_relative "tarea_compuesta_1"

tarea_c = TareaCompuestaUno.new
tarea_c.ejecutar_tarea

puts tarea_c.count_tareas_hoja

puts tarea_c.tiempo_requerido

