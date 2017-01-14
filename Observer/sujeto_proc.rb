module SujetoProc
	
	def initialize
		@observadores = []
	end
	
	def notificar_observadores
		@observadores.each do |observador|
			observador.call self
		end
	end
	
	def add_observador(&observador)
		@observadores << observador
	end
	
	def borrar_observador(observador)
		@observadores.delete observador
	end
end
