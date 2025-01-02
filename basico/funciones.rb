# Definición de función simple
def greet(name)
    puts "Hola, #{name}!"
  end
  
  greet("Juan")  # Llamada a la función
  
  # Función con valor de retorno
  def add(a, b)
    return a + b
  end
  
  result = add(5, 3)
  puts "La suma es: #{result}"
  