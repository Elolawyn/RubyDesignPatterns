class LagoMultiple

	def initialize(numero_animales, clase_animal, numero_plantas, clase_planta)
		@clase_animal = clase_animal
		@clase_planta = clase_planta

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
	
	def nuevo_organismo(tipo, nombre)
		if tipo == :animal
			@clase_animal.new(nombre)
		elsif tipo == :planta
			@clase_planta.new(nombre)
		else
			raise "Tipo desconocido: #{type}"
		end
	end
	
end
