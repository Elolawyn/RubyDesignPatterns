# Patrón 4: Composite

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite dividir tareas complejas en subtareas siempre que todas ellas, tanto las más complejas como las más simples tengan algunas características iguales.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/image_01.png)

### Ejemplo

Una clase define una tarea. Tarea compuesta, que también es una tarea; está formada por tareas. Hay una tarea compuesta formada por dos tareas hojas que trabajan para cumplir un objetivo.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/main.rb)
2. [Tarea](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/tarea.rb)
3. [TareaCompuesta](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/tarea_compuesta.rb)
4. [TareaHojaUno](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/tarea_hoja_1.rb)
5. [TareaHojaDos](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/tarea_hoja_2.rb)
6. [TareaCompuestaUno](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Composite/tarea_compuesta_1.rb)

