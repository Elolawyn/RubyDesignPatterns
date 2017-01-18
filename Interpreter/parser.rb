require_relative "buscador"

class Parser

	def initialize(text)
		@tokens = text.scan(/\(|\)|[\w\.\*]+/)
	end
	
	def siguiente_token
		@tokens.shift
	end
	
	def expresion
		token = siguiente_token
		if token == nil
			return nil
		elsif token == '('
			resultado = expresion
			raise 'Se esperaba )' unless siguiente_token == ')'
			resultado
		elsif token == 'todos'
			return FicherosTodos.new
			
		elsif token == 'editable'
			return FicherosEditables.new
			
		elsif token == 'masgrande'
			return FicherosMasGrandes.new(siguiente_token.to_i)
			
		elsif token == 'nombre'
			return FicherosNombre.new(siguiente_token)
			
		elsif token == 'no'
			return Not.new(expresion)
			
		elsif token == 'y'
			return And.new(expresion, expresion)
			
		elsif token == 'o'
			return Or.new(expresion, expresion)
			
		else
			raise "Token inesperado: #{token}"
		end
	end

end
