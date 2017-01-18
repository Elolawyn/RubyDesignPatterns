# Patrón 10: Singleton

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón se utiliza para crear una clase que sólo disponga de una instancia única que esté disponible desde cualquier parte del código.

### Ejemplo 1

Tenemos una clase singleton llamada Logger que almacena una lista de mensajes. 

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Singleton/main.rb)
2. [Logger](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Singleton/logger.rb)

### Ejemplo 2

Ahora la clase Logger utiliza el módulo **Singleton** de ruby para adquirir la capacidad de ser singleton.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Singleton/main_module.rb)
2. [Logger](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Singleton/logger_module.rb)
