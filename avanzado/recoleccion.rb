# Verificación de la recolección de basura
class Persona
    def initialize(nombre)
      @nombre = nombre
    end
  end
  
  # Crear objetos
  persona1 = Persona.new("Juan")
  persona2 = Persona.new("Carlos")
  
  # Eliminar objetos
  persona1 = nil
  persona2 = nil
  
  # Forzar la recolección de basura
  GC.start
  
  # Mostrar el estado de la recolección de basura
  puts "Recolección de basura ejecutada."
  