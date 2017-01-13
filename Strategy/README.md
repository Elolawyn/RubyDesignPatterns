# Patrón 2: Strategy

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón consiste ubicar diversos algoritmos para producir un resultado en distintas clases llamadas **Estrategias** y almacenar los argumentos que van a emplear los algoritmos en otra llamda **Contexto**. El contexto recibe una de las estrategias y produce el resultado. La estrategia además puede cambiarse durante la ejecución.

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/image_01.png)

### Ejemplo 1

Una clase contiene los argumentos y la estrategia. Las otras clases son las estrategias.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/main.rb)
2. [Informe: contexto](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/informe.rb)
3. [ImpresorHTML: estrategia 1](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/impresor_html.rb)
4. [ImpresorPlano: estrategia 2](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/impresor_plano.rb)

### Ejemplo 2

Una clase contiene los argumentos y la estrategia. Las estrategias son procs.

1. [Main y proc de la estrategia 2 on the fly](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/main_proc.rb)
2. [Informe: contexto](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/informe_proc.rb)
3. [IMPRESOR_HTML: estrategia 1 como proc](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Strategy/impresor_html_proc.rb)

