require_relative "escritor"
require_relative "decoradores"

escritor = Escritor.new('lineas.txt')
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')

escritor = EscritorNumerosLineas.new(Escritor.new('numeros_linea.txt'))
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')

escritor = EscritorChecksum.new(Escritor.new('checksums.txt'))
escritor.imprimir_linea('Hola')
puts escritor.check_sum
escritor.imprimir_linea('Adios')
puts escritor.check_sum
escritor.imprimir_linea('Hasta mañana')
puts escritor.check_sum

escritor = EscritorTimeStamp.new(Escritor.new('timestamps.txt'))
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')

escritor = EscritorChecksum.new(EscritorTimeStamp.new(EscritorNumerosLineas.new(Escritor.new('todo_junto.txt'))))
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')
