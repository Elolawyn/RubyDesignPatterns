require_relative 'animales'
require_relative 'plantas'

class LagoMultiple

	def initialize(numero_animales, numero_plantas)
		@animales = []
		numero_animales.times do |i|
			animales = nuevo_organismo(:animal, "Animal#{i}")
			@animales << animales
		end
		
		@plantas = []
		numero_plantas.times do |i|
			plantas = nuevo_organismo(:planta, "Planta#{i}")
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

class RanaAlgaLago < LagoMultiple
	
	def nuevo_organismo(tipo, nombre)
		if tipo == :animal
			Rana.new(nombre)
		elsif tipo == :planta
			Alga.new(nombre)
		else
			raise "Tipo desconocido: #{type}"
		end
	end
	
end

class PatoNenufarLago < LagoMultiple
	
	def nuevo_organismo(tipo, nombre)
		if tipo == :animal
			Pato.new(nombre)
		elsif tipo == :planta
			Nenufar.new(nombre)
		else
			raise "Tipo desconocido: #{type}"
		end
	end

end
