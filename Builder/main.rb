require_relative "componentes"

placa_base = PlacaBase.new(TurboCPU.new, 4000)
almacenamientos = []
almacenamientos << Almacenamiento.new(:hard_drive, 200000, true)
almacenamientos << Almacenamiento.new(:cd, 760, true)
almacenamientos << Almacenamiento.new(:dvd, 4700, false)

ordenador = Ordenador.new(:lcd, placa_base, almacenamientos)
