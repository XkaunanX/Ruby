# Crear un método dinámicamente
class Persona
    # Definir métodos de forma dinámica
    define_method(:saludar) do
      puts "¡Hola! Soy una persona."
    end
  end
  
  persona = Persona.new
  persona.saludar  # ¡Hola! Soy una persona.
  
  # Crear métodos getter y setter de manera dinámica
  class Producto
    [:nombre, :precio].each do |attr|
      define_method(attr) { instance_variable_get("@#{attr}") }
      define_method("#{attr}=") { |value| instance_variable_set("@#{attr}", value) }
    end
  end
  
  producto = Producto.new
  producto.nombre = "Laptop"
  producto.precio = 1000
  puts producto.nombre  # Laptop
  puts producto.precio  # 1000
  