# Patrón 11: Factory

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite aplicar el patrón **Template** al problema de la creación de objetos. Permite mantener la lógica de funcionamiento común en una clase y dejar el tema del objeto que la va a realizar a una subclase. El patrón de **Abstract Factory** se utiliza para crear conjuntos de objetos compatibles.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/image_01.png)
![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/image_02.png)

### Ejemplo 1

Disponemos de una clase **Lago** en la que pueden habitar distintos animales. Creamos dos subclases suyas, cada una permite vivir un animal concreto en su interior.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/main.rb)
2. [Lagos](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/lago.rb)
3. [Animales](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/animales.rb)

### Ejemplo 2

Hemos ampliado el ejemplo anterior para que ahora en el lago habiten combinaciones de animales y plantas.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/main_animal_planta.rb)
2. [Lagos](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/lago_animal_planta.rb)
3. [Animales](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/animales.rb)
4. [Plantas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/plantas.rb)

### Ejemplo 3

Hemos mejorado el ejemplo anterior para que ahora no sea necesario el uso de una subclase.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/main_sin_subclases.rb)
2. [Lagos](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/lago_sin_subclases.rb)
3. [Animales](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/animales.rb)
4. [Plantas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/plantas.rb)

### Ejemplo 4

Hemos mejorado los habitats de los animales para que sólo unas determinadas especies puedan convivir.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/main_habitat.rb)
2. [Habitat](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/habitat.rb)
3. [Animales](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/animales.rb)
4. [Plantas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/plantas.rb)

### Ejemplo 5

Ejemplo de uso del patrón **Factory** aprovechando convenciones de nombres.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/main_convencion_nombres.rb)
2. [IOFactoria](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Factory/convencion_nombres.rb)
