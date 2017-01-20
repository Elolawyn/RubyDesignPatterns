require_relative 'habitat'

habitat = Habitat.new(3, 3, FactoriaLago.new)
habitat.simular_dia

habitat = Habitat.new(3, 3, FactoriaJungla.new)
habitat.simular_dia

habitat = Habitat.new(3, 3, FactoriaOrganismo.new(Alga, Rana))
habitat.simular_dia
