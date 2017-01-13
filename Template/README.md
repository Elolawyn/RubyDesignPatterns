# Patrón 1: Template

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón consiste en encapsular la parte invariante de un algoritmo en una clase base y encapsular las partes variantes en subclases. La clase base puede tener algunos métodos sin definir y que por tanto las subclases deben sobrescribir para su correcto funcionamiento y otros métodos, llamados **hook methods** que tienen un comportamiento por defecto y las subclases no tienen que sobrescribirlos.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Template/README.md)

### Ejemplo

Una clase para imprimir un informe. La clase original no puede imprimir por sí misma. Las subclases permiten imprimirlo en HTML y en texto plano.

1. [Informe: clase base](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Template/informe.rb)
2. [InformeHTML: subclase](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Template/informe_html.rb)
3. [InformePlano: subclase](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Template/informe_plano.rb)

