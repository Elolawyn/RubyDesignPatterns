require_relative "iterador_externo"

array = ["Manzana", "Pera", "Plátano"]

iterador = IteradorArray.new array
while iterador.siguiente?
	puts iterador.siguiente
end
