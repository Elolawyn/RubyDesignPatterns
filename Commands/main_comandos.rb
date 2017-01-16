require_relative "comandos_ficheros"
require_relative "comando"

comandos = ComandoCompuesto.new
comandos.add_comando(CrearFichero.new('file1.txt', "hello world\n"))
comandos.add_comando(CopiarFichero.new('file1.txt', 'file2.txt'))
comandos.add_comando(BorrarFichero.new('file1.txt'))

comandos.ejecutar

puts comandos.descripcion

#comandos.deshacer
