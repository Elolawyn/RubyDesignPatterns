require_relative 'animales'

class Lago

	def initialize(numero_patos)
		@patos = []
		numero_patos.times do |i|
			patos = Pato.new("Pato#{i}")
			@patos << patos
		end
	end
	
	def simular_dia
		@patos.each do |pato|
			pato.habla
		end
		@patos.each do |pato|
			pato.come
		end
		@patos.each do |pato|
			pato.duerme
		end
	end
	
end

class LagoMultiple

	def initialize(numero_animales)
		@animales = []
		numero_animales.times do |i|
			animales = nuevo_animal("Animal#{i}")
			@animales << animales
		end
	end
	
	def simular_dia
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

class RanaLago < LagoMultiple
	
	def nuevo_animal(nombre)
		Rana.new(nombre)
	end
	
end

class PatoLago < LagoMultiple
	
	def nuevo_animal(nombre)
		Pato.new(nombre)
	end
	
end
