# Patrón 12: Builder

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón de diseño consiste en emplear una clase para encapsular la creación de un objeto, que probablemente por si misma sea muy laboriosa de realizar. De esta forma, además se puede añadir con facilidad métodos para asegurar el buen estado del objeto a crear.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/image_01.png)
![Abstract Builder](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/image_02.png)

### Ejemplo 1

Creamos un builder para facilitar la creación de un ordenador y sus componentes. Además, agregamos protección a la creación del ordenador y métodos mágicos para la creación sencilla del mismo.

1. [Main complicado](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/main.rb)
2. [Main usando el builder](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/main_builder.rb)
3. [Componentes](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/componentes.rb)
4. [Builder](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/builder.rb)

### Ejemplo 2

Ahora disponemos de builders para crear ordenadores de sobremesa y ordenadores portátiles. Estos builders tienen parte de código común en una superclase y se diferencian en las características de los ordenadores que crean.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/main_abstract.rb)
2. [Componentes](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/componentes.rb)
3. [AbstractBuilder](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Builder/abstract_builder.rb)

