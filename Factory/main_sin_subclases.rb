require_relative 'animales'
require_relative 'plantas'
require_relative 'lago_sin_subclases'

lago = LagoMultiple.new(3, Pato, 3, Nenufar)
lago.simular_dia

lago = LagoMultiple.new(3, Rana, 3, Alga)
lago.simular_dia

