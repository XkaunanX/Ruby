# Polimorfismo: las clases hija pueden sobrescribir métodos de la clase base
class Animal
    def speak
      puts "El animal hace un sonido."
    end
  end
  
  class Perro < Animal
    def speak
      puts "El perro ladra."
    end
  end
  
  class Gato < Animal
    def speak
      puts "El gato maúlla."
    end
  end
  
  # Método polimórfico
  def make_sound(animal)
    animal.speak
  end
  
  # Creación de objetos
  perro = Perro.new
  gato = Gato.new
  
  make_sound(perro)  # El perro ladra.
  make_sound(gato)   # El gato maúlla.
  