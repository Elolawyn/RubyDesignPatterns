# Patrón 13: Interpreter

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón se utiliza para crear un intérprete de órdenes que permita el análisis de instrucciones y la ejecución de las mismas con eficiencia. Para ello, hace falta un parser que interprete las instrucciones y las convierta en un AST (Abstact Syntax Tree). El AST es un árbol compuesto por **nodos terminales** y nodos **no terminales**.

![AST](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/image_02.png)

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/image_01.png)

### Ejemplo 1

En los tres ejemplos se va a crear un buscador de ficheros que admita ciertas órdenes básicas:

1. Obtener todos los ficheros de un directorio y subdirectorios.
2. Obtener todos los ficheros de un directorio y subdirectorios según el nombre.
3. Obtener todos los ficheros de un directorio y subdirectorios más grandes que un tamaño.
4. Obtener todos los ficheros de un directorio y subdirectorios que sean editables.
5. Negar una condición.
6. OR dos condiciones.
7. AND dos condiciones.

En este ejemplo se han creado clases para las operaciones de búsqueda. 

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/main.rb)
2. [Buscador: contiene todas las expresiones para las búsquedas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/buscador.rb)

### Ejemplo 2

Se ha preparado un parser simple para evaluar una expresión y construir las operaciones de búsquedas de deseadas.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/main_parser.rb)
2. [Buscador: contiene todas las expresiones para las búsquedas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/buscador.rb)
3. [Parser](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/parser.rb)

### Ejemplo 3

Se han preparado varios métodos y expresiones para que un programador use dichos métodos para construir la expresión de búsqueda deseada sin necesidad de un parser.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/main_no_parser.rb)
2. [Buscador: contiene todas las expresiones para las búsquedas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Interpreter/buscador.rb)

