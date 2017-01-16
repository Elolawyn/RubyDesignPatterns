class Boton

	attr_accessor :comando
	
	def initialize(comando)
		@comando = comando
	end

	def on_button_push
		@comando.ejecutar if @comando
	end

end
