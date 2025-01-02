# Definición de una clase
class Persona
    # Atributos
    attr_accessor :nombre, :edad
    
    # Constructor
    def initialize(nombre, edad)
      @nombre = nombre
      @edad = edad
    end
  
    # Método
    def presentarse
      puts "Hola, soy #{@nombre} y tengo #{@edad} años."
    end
  end
  
  # Creación de un objeto
  persona1 = Persona.new("Juan", 25)
  persona1.presentarse  # Llamada al método
  