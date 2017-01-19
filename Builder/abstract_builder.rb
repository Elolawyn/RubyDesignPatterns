require_relative 'componentes'

class BuilderOrdenador

	attr_reader :ordenador
	
	def turbo(tiene_turbo_cpu = true)
		@ordenador.placa_base.cpu = TurboCPU.new
	end
	
	def size_memoria=(size_en_mb)
		@ordenador.placa_base.size_memoria = size_en_mb
	end
end

class BuilderOrdenadorSobremesa < BuilderOrdenador
	
	def initialize
		@ordenador = OrdenadorSobremesa.new
	end
	
	def pantalla=(pantalla)
		@ordenador.pantalla = pantalla
	end
	
	def add_cd(editable = false)
		@ordenador.almacenamientos << Almacenamiento.new(:cd, 760, editable)
	end
	
	def add_dvd(editable = false)
		@ordenador.almacenamientos << Almacenamiento.new(:dvd, 4000, editable)
	end
	
	def add_disco_duro(size_en_mb)
		@ordenador.almacenamientos << Almacenamiento.new(:hard_disk, size_en_mb, true)
	end
	
end

class BuilderOrdenadorPortatil < BuilderOrdenador
	
	def initialize
		@ordenador = OrdenadorPortatil.new
	end
	
	def pantalla=(pantalla)
		raise "La pantalla de un portátil debe ser de tipo lcd" unless pantalla == :lcd
	end
	
	def add_cd(editable = false)
		@ordenador.almacenamientos << AlmacenamientoPortatil.new(:cd, 760, editable)
	end
	
	def add_dvd(editable = false)
		@ordenador.almacenamientos << AlmacenamientoPortatil.new(:dvd, 4000, editable)
	end
	
	def add_disco_duro(size_en_mb)
		@ordenador.almacenamientos << AlmacenamientoPortatil.new(:hard_disk, size_en_mb, true)
	end
	
end
