class Informe

  attr_reader :titulo, :texto  # Atributos que se van a imprimir en el informe
  attr_accessor :impresor     # La estrategia a usar para imprimir el informe, puede cambiarse sobre la marcha
  
  def initialize(impresor)
    @titulo = 'Informe mensual'
    @texto = ['Las cosas van', 'Muy bien']
    @impresor = impresor
  end
  
  # La estrategia puede recibir una referencia al contexto para acceder a los datos o puede recibir los datos en la llamada
  def imprimir()
    @impresor.imprimir self 
  end
  
end
