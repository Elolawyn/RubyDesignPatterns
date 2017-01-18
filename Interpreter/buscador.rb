require 'find'

class Expresion

	def |(otra_expresion)
		Or.new(self, otra_expresion)
	end
	
	def &(otra_expresion)

		And.new(self, otra_expresion)
	end
	
end

class FicherosTodos < Expresion

	def evaluar(directorio)
		resultados = []
		# Ejecuta el siguiente bloque de código por cada elemento en el directorio indicado
		Find.find(directorio) do |fichero|
			next unless File.file?(fichero)
			resultados << fichero
		end
		resultados
	end
	
end

class FicherosNombre < Expresion

	def initialize(patron)
		@patron = patron
	end
	
	def evaluar(directorio)
		resultados = []
		Find.find(directorio) do |fichero|
			next unless File.file?(fichero)
			nombre = File.basename(fichero)
			resultados << fichero if File.fnmatch(@patron, nombre)
		end
		resultados
	end
	
end

class FicherosMasGrandes < Expresion

	def initialize(size)
		@size = size
	end
	
	def evaluar(directorio)
		resultados = []
		Find.find(directorio) do |fichero|
			next unless File.file?(fichero)
			resultados << fichero if (File.size(fichero) > @size)
		end
		resultados
	end

end

class FicherosEditables < Expresion

	def evaluar(directorio)
		resultados = []
		Find.find(directorio) do |fichero|
			next unless File.file?(fichero)
			resultados << fichero if File.writable?(fichero)
		end
		resultados
	end
	
end

class Not < Expresion

	def initialize(expresion)
		@expresion = expresion
	end

	def evaluar(directorio)
		FicherosTodos.new.evaluar(directorio) - @expresion.evaluar(directorio)
	end
end

class Or < Expresion

	def initialize(expresion_1, expresion_2)
		@expresion_1 = expresion_1
		@expresion_2 = expresion_2
	end
	
	def evaluar(directorio)
		resultado_1 = @expresion_1.evaluar(directorio)
		resultado_2 = @expresion_2.evaluar(directorio)
		(resultado_1 + resultado_2).sort.uniq
	end
end

class And < Expresion

	def initialize(expresion_1, expresion_2)
		@expresion_1 = expresion_1
		@expresion_2 = expresion_2
	end
	
	def evaluar(directorio)
		resultado_1 = @expresion_1.evaluar(directorio)
		resultado_2 = @expresion_2.evaluar(directorio)
		(resultado_1 & resultado_2)
	end
end

def todos
	FicherosTodos.new
end

def masgrande(size)
	FicherosMasGrandes.new(size)
end

def nombre(patron)
	FicherosNombre.new(patron)
end

# No se puede usar not porque ya existe en ruby como palabra clave
def excepto(expresion)
	Not.new(expresion)
end

def editables
	FicherosEditables.new
end
