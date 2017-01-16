# Patrón 5: Iterator

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite a un objeto proveer de funciones para el acceso a los objetos que posee sin ofrecer detalles de cómo los almacena. Si la lógica de iteración está contenida en una clase distinta a aquella que almacena los objetos se llama **iterador externo** e **iterador_interno** en caso contrario. Los iteradores externos tienen la ventaja de poder ser utilizados con distintos tipos de objetos a la vez y ser más fácil de controlar la lógica de acceso a las colecciones. Si se pretende emplear un iterador interno, se puede agregar a una clase el módulo estandar de ruby **Enumerable** que aporta muchos métodos interesantes. Este método sin embargo requiere lo siguiente:

```Ruby
class Objeto

	attr_accessor :atributo
	
	def initialize(atributo)
		@atributo = atributo
	end
	
	def <=>(otro_objeto)
		atributo <=> otro_objeto.atributo
	end
end
	
class Array

	include Enumerable
	
	def initialize
		@objetos = []
	end
	
	def each(&bloque)
		@objetos.each(&bloque)
	end

end
```

Para finalizar, pueden darse problemas si mientras se accede a los array, éstos son manipulados. Para evitarlos, los iteradores pueden crear una copia del array.

### Ejemplo 1

Se va a utilizar un iterador externo para recorrer un array e imprimir sus elementos.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Iterator/main_iterador_externo.rb)
2. [IteradorArray: clase para recorrer el array](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Iterator/iterador_externo.rb)

### Ejemplo 2

Se va a utilizar un iterador interno con un bloque de código.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Iterator/main_iterador_interno.rb)

### Ejemplo 3

Se incluye el módulo **Enumerable** en una clase que contiene un array. 

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Iterator/main_enumerable.rb)
2. [Cuenta y ListaCuentas: clase con datos y clase array](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Iterator/enumerable.rb)

