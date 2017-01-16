class BotonProc

	attr_accessor :comando
	
	def initialize(&bloque)
		@comando = bloque
	end

	def on_button_push
		@comando.call if @comando
	end

end
