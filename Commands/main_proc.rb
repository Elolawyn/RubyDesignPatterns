require_relative "boton_proc"

boton_1 = BotonProc.new do 
	puts "Hola mundo"
end

boton_2 = BotonProc.new do 
	puts "Adios mundo"
end

boton_1.on_button_push
boton_2.on_button_push
