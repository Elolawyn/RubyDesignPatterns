class ImpresorPlano

	def imprimir(contexto)
		puts "***** #{contexto.titulo} *****"
		contexto.texto.each do |linea|
			puts linea
		end
	end
  
end
