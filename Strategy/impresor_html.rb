class ImpresorHTML

	def imprimir(contexto)
		puts '<html>'
		puts '  <head>'
		puts "    <title>#{contexto.titulo}</title>"
		puts '  </head>'
		puts '  <body>'
		contexto.texto.each do |linea|
			puts "    <p>#{linea}</p>"
		end
		puts '  </body>'
		puts '</html>'
	end
  
end
