require_relative 'animales'
require_relative 'plantas'

class Habitat

	def initialize(numero_animales, numero_plantas, factoria)
		@factoria = factoria

		@animales = []
		numero_animales.times do |i|
			animales = @factoria.nuevo_animal("Animal#{i}")
			@animales << animales
		end
		
		@plantas = []
		numero_plantas.times do |i|
			plantas = @factoria.nueva_planta("Planta#{i}")
			@plantas << plantas
		end
	end
	
	def simular_dia
		@plantas.each do |planta|
			planta.crece
		end
		@animales.each do |animal|
			animal.habla
		end
		@animales.each do |animal|
			animal.come
		end
		@animales.each do |animal|
			animal.duerme
		end
	end
	
end

class FactoriaLago

	def nuevo_animal(nombre)
		Rana.new(nombre)
	end
	
	def nueva_planta(nombre)
		Alga.new(nombre)
	end
	
end

class FactoriaJungla

	def nuevo_animal(nombre)
		Tigre.new(nombre)
	end
	
	def nueva_planta(nombre)
		Arbol.new(nombre)
	end
	
end

class FactoriaOrganismo

	def initialize(clase_planta, clase_animal)
		@clase_planta = clase_planta
		@clase_animal = clase_animal
	end

	def nuevo_animal(nombre)
		@clase_animal.new(nombre)
	end
	
	def nueva_planta(nombre)
		@clase_planta.new(nombre)
	end
	
end
