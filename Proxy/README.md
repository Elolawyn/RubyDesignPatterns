# Patrón 8: Proxy

[Volver al índice](https://github.com/Elolawyn/RubyDesignPatterns#index)

Este patrón consiste en crear un objeto que haga de intermediario entre la aplicación y el objeto real de forma que la aplicación crea que el intermediario es el real. Permite añadir al intermediario lógica adicional independiente de la aplicación y el objeto real. Algunos ejemplos de uso son: 

1. Proeger el acceso a un objeto. (La lógica de acceso estaría en el proxy)
2. Esconder el hecho de que un objeto no se encuentra en la aplicación cliente sino en un servidor. (La lógica de conexión estaría en el proxy)
3. Retrasar hasta el último momento la creación de un objeto. (El proxy almacena los argumentos de creación y sólo cuando se requiera, el proxy creará el objeto real)

![Modelo del patrón](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/image_01.rb)

### Ejemplo 1

Proxy simple, simplemente delega las tareas en el objeto real. No tiene utilidad.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main.rb)
2. [Proxy](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)

### Ejemplo 2

Proxy seguro, contiene lógica para comprobar quién tiene permiso de acceso. Separa la lógica de acceso del objeto que requiere protección.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main_proxy_seguro.rb)
2. [ProxySeguro](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy_seguro.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)

### Ejemplo 3

Proxy virtual que crea el objeto real accedido sólo en el momento de necesitarlo, y no cuando se crea el proxy.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main_proxy_virtual_1.rb)
2. [ProxyVirtual](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy_virtual_1.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)

### Ejemplo 4

Proxy virtual que crea el objeto real accedido sólo en el momento de necesitarlo, y no cuando se crea el proxy. A diferencia del ejemplo anterior, crea el objeto ejecutando un proc que recibe como argumento.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main_proxy_virtual_2.rb)
2. [ProxyVirtual](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy_virtual_2.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)

### Ejemplo 5

Proxy con paso de mensajes. Permite utilizar cualquier método de la clase real sin tener que definir dichos métodos. Si un método no existe lanza una excepción.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main_proxy_mensaje.rb)
2. [ProxyMensaje](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy_mensaje.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)

### Ejemplo 6

Proxy seguro con paso de mensajes. Permite restringir el acceso a la clase real manteniendo los beneficios del ejemplo anterior. Además gracias a dichos beneficios, podría proteger cualquier clase.

1. [Main](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/main_proxy_seguro_mensaje.rb)
2. [ProxySeguroMensaje](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/proxy_seguro_mensaje.rb)
3. [CuentaBanco](https://github.com/Elolawyn/RubyDesignPatterns/blob/master/Proxy/cuenta_banco.rb)
