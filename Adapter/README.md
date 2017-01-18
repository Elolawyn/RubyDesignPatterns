# Patrón 7: Adapter

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón consiste en escribir un fragmento de código que permite la unión de dos componentes para trabajar conjuntamente. Sin el fragmento **adaptador**, los dos componentes no serían capaces de trabajar juntos.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/image_01.png)

### Ejemplo 1

Tenemos una clase para encriptar que necesita un fichero abierto pero debemos usarla con un string, así que creamos una clase intermedia que almacene el string pero tenga los métodos de ficheros que requiere la clase encriptadora.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/main.rb)
2. [Encriptador](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/encriptador.rb)
3. [AdaptadorString](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/adaptador.rb)
4. [Desencriptador](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/desencriptador.rb)

### Ejemplo 2

Una clase contiene un texto y otra lo imprime, pero el acceso del impresor no es compatible con la clase contenedora del texto así que le agregamos un método nuevo durante la ejecución para compatibilizarlas.

1. [Main: el método se agrega sólo a una instancia de la clase](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/main_modificacion_1.rb)
2. [Main: el método se agrega a la clase](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/main_modificacion_2.rb)
3. [Impresor](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/impresor.rb)
4. [Texto](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Adapter/texto.rb)

