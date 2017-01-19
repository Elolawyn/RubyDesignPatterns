require_relative "escritor"
require_relative "modulos_decoradores"

escritor = Escritor.new('lineas_modulos_decoradores.txt')
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')
escritor.extend(EscritorNumerosLineas)
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')
escritor.extend(EscritorTimeStamp)
escritor.imprimir_linea('Hola')
escritor.imprimir_linea('Adios')
escritor.imprimir_linea('Hasta mañana')
