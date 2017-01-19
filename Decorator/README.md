# Patrón 9: Decorator

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite partir de un objeto con una funcionalidad sencilla y añadir nueva funcionalidad sobre la marcha. Cada decorador es una capa: recibe una entrada, ejecuta lo que tenga que hacer y luego pasa el testigo hasta otro decorador. Finalmente el objeto básico será el que acabe la tarea. En este patrón, el **ConcreteComponent** es el objeto real, el componente con la funcionalidad básica. El decorador posee una referencia hacia el siguiente componente en la cadena de decoradores, hasta llegar al componente concreto.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/image_01.png)

### Ejemplo 1

Disponemos de una clase **Escritor** que posee la funcionalidad básica de tratamiento de ficheros y escribe líneas en ellos. Después creamos varios decoradores que nos permitan añadir variaciones a las líneas a imprimir. La funionalidad común de cada decorador se encuentra en la clase **DecoradorEscritor**

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/main.rb)
2. [Escritor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/escritor.rb)
3. [DecoradorEscritor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/decorador.rb)
4. [Decoradores](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/decoradores.rb)

### Ejemplo 2

Mismo ejemplo que el anterior pero utilizamos un módulo estandar de ruby para crear el decorador.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/main_module.rb)
2. [Escritor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/escritor.rb)
3. [DecoradorEscritor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/decorador_module.rb)
4. [Decoradores](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/decoradores_module.rb)

### Ejemplo 3

En este ejemplo, partimos de la clase que escribe líneas en el fichero y añadimos sobre la marcha distintos decoradores para variar la impresión.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/main_modulos_decoradores.rb)
2. [Escritor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/escritor.rb)
3. [Decoradores](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Decorator/modulos_decoradores.rb)
