# Definición de la clase base
class Animal
    def speak
      puts "El animal hace un sonido."
    end
  end
  
  # Herencia: la clase Perro hereda de Animal
  class Perro < Animal
    def speak
      puts "El perro ladra."
    end
  end
  
  # Herencia: la clase Gato hereda de Animal
  class Gato < Animal
    def speak
      puts "El gato maúlla."
    end
  end
  
  # Creación de objetos
  animal = Animal.new
  perro = Perro.new
  gato = Gato.new
  
  animal.speak   # El animal hace un sonido.
  perro.speak    # El perro ladra.
  gato.speak     # El gato maúlla.
  