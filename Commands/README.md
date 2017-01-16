# Patrón 6: Commands

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite crear objetos llamados **Comandos** que saben hacer acciones específicas. Luego puedes asignar los comandos a botones por ejemplo y así no tienes que crear un boón específico para una tarea. Los comandos pueden mantener una descripción de lo que realizan, ejecutarlos y deshacerlos. También pueden encadenarse para ser ejecutados uno tras otro.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/image_01.png)

### Ejemplo 1

Se crean dos botones y a cada uno se le asigna un comando distinto.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/main.rb)
2. [Boton: botón de un GUI que realiza una acción al ser pulsado](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/boton.rb)
3. [ComandoUno y ComandoDos: clases que ejecutan tareas](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/comandos.rb)

### Ejemplo 2

Se crean dos botones y a cada uno se le asigna un proc distinto.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/main_proc.rb)
2. [BotonProc: botón de un GUI que ejecuta un bloque de código al ser pulsado](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/boton_proc.rb)

### Ejemplo 3

Ejemplo de uso de lista de comandos. Se puede comprobar los comandos ejecutados, ejecutarlos y deshacerlos.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/main_comandos.rb)
2. [Comando y ComandoCompuesto: clase para ejecutar un comando y para tener una lista de comandos](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/comando.rb)
3. [Serie de clases para trabajar con ficheros](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Commands/comandos_ficheros.rb)
