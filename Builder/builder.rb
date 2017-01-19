require_relative 'componentes'

class BuilderOrdenador

	def initialize
		@ordenador = Ordenador.new
	end
	
	def turbo(tiene_turbo_cpu = true)
		@ordenador.placa_base.cpu = TurboCPU.new
	end
	
	def pantalla=(pantalla)
		@ordenador.pantalla = pantalla
	end
	
	def size_memoria=(size_en_mb)
		@ordenador.placa_base.size_memoria = size_en_mb
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
	
	# Para generar un ordenador nuevo vacío
	def reset
		@ordenador = Ordenador.new
	end
	
	# Permite que usemos métodos mágicos para configurar el ordenador
	def method_missing(nombre, *argumentos)
		palabras = nombre.to_s.split("_")
		return super(nombre, *argumentos) unless palabras.shift == 'add'
		palabras.each do |palabra|
			next if palabra == 'and'
			add_cd if palabra == 'cd'
			add_dvd if palabra == 'dvd'
			add_disco_duro(100000) if palabra == 'discoduro'
			turbo if palabra == 'turbo'
		end
	end
	
	# Podemos validar la configuración de un ordenador para poder recuperarlo
	def ordenador
		raise "No hay suficiente memoria" if @ordenador.placa_base.size_memoria < 250
		raise "Demasiados dispositivos de almacenamiento" if @ordenador.almacenamientos.size > 4
		disco_duro = @ordenador.almacenamientos.find {|almacenamiento| almacenamiento.tipo == :hard_disk}
		if ! disco_duro
			raise "No hay más espacio para añadir un disco duro." if @ordenador.almacenamientos.size >= 4
			add_disco_duro(100000)
		end
		@ordenador
	end

end
