require_relative "encriptador"
require_relative "desencriptador"
require_relative "adaptador"

lector = File.open('mensaje_1.txt')
escritor = File.open('mensaje_1.encriptado', 'w')
encriptador = Encriptador.new('clave')
encriptador.encriptar(lector, escritor)
lector.close
escritor.close

lector = AdaptadorString.new('Nuevo mensaje a encriptar')
escritor = File.open('mensaje_2.encriptado', 'w')
encriptador = Encriptador.new('clave')
encriptador.encriptar(lector, escritor)
escritor.close


lector = File.open('mensaje_1.encriptado')
escritor = File.open('mensaje_1_desencriptado.txt', 'w')
desencriptador = Desencriptador.new('clave')
desencriptador.desencriptar(lector, escritor)
lector.close
escritor.close

lector = File.open('mensaje_2.encriptado')
escritor = File.open('mensaje_2_desencriptado.txt', 'w')
desencriptador = Desencriptador.new('clave')
desencriptador.desencriptar(lector, escritor)
lector.close
escritor.close
