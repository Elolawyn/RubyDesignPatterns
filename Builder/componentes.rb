class Ordenador

	attr_accessor :pantalla
	attr_accessor :placa_base
	attr_reader :almacenamientos
	
	def initialize(pantalla = :crt, placa_base = PlacaBase.new, almacenamientos = [])
		@placa_base = placa_base
		@almacenamientos = almacenamientos
		@pantalla = pantalla
	end
	
	def to_s
		puts "Ordenador"
		puts "--"
		puts @pantalla
		puts @placa_base.cpu
		puts @placa_base.size_memoria
		puts "--"
		@almacenamientos.each do |almacenamiento|
			puts almacenamiento.tipo
			puts almacenamiento.size
			puts almacenamiento.editable
			puts "--"
		end
	end
	
end

class CPU
	
end

class BasicCPU < CPU

end

class TurboCPU < CPU

end

class PlacaBase

	attr_accessor :cpu
	attr_accessor :size_memoria

	def initialize(cpu = BasicCPU.new, size_memoria = 1000)
		@cpu = cpu
		@size_memoria = size_memoria
	end
	
end

class Almacenamiento

	attr_reader :tipo		# :hard_disk, :cd or :dvd
	attr_reader :size		# En MB
	attr_reader :editable	# true si se puede escribir en él
	
	def initialize(tipo, size, editable)
		@tipo = tipo
		@size = size
		@editable = editable
	end
	
end

class AlmacenamientoPortatil < Almacenamiento

end

class OrdenadorSobremesa < Ordenador

end

class OrdenadorPortatil < Ordenador

	def initialize(placa_base = PlacaBase.new, almacenamientos = [])
		super(:lcd, placa_base, almacenamientos)
	end

end
