# Patrón 3: Observer

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón permite construir componentes que sepan de las actividades de otros sin estar estrechamente entrelazados entre ellos. La clase que emite el aviso se llama **Sujeto** y las clases que lo reciben **Observadores**.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/image_01.png)

### Ejemplo 1

Empleado es el sujeto, que contiene un módulo con funciones para observadores. Departamento es el observador que recibe el aviso y actúa en consecuencia.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/main.rb)
2. [Empleado: clase que emite el aviso](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/empleado.rb)
3. [Departamento: clase observadora](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/departamento.rb)
4. [Sujeto: módulo con las funciones para observadores](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/sujeto.rb)

### Ejemplo 2

Empleado es el sujeto, que contiene un módulo **Observable** de la librería de Ruby. Departamento es el observador que recibe el aviso y actúa en consecuencia.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/main_standard_observer.rb)
2. [Empleado: clase que emite el aviso](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/empleado_standard_observer.rb)
3. [Departamento: clase observadora](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/departamento.rb)

### Ejemplo 3

EmpleadoProc es el sujeto, que contiene un módulo para trabajar con procs. El proc recibe el aviso y actúa en consecuencia.

1. [Main y proc del observador](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/main_proc.rb)
2. [EmpleadoProc: clase que emite el aviso](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/empleado_proc.rb)
3. [SujetoProc: módulo con las funciones para observadores](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Observer/sujeto_proc.rb)
