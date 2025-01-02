# Bloques
def saludar
    yield("Juan") if block_given?
  end
  
  saludar { |nombre| puts "¡Hola, #{nombre}!" }  # ¡Hola, Juan!
  
  # Procs
  saludo = Proc.new { |nombre| puts "¡Hola, #{nombre}!" }
  saludo.call("Carlos")  # ¡Hola, Carlos!
  
  # Lambdas
  saludo_lambda = lambda { |nombre| puts "¡Hola, #{nombre}!" }
  saludo_lambda.call("Ana")  # ¡Hola, Ana!
  
  # Diferencia entre Proc y Lambda
  # En una lambda, el número de argumentos debe coincidir exactamente:
  begin
    saludo_lambda.call("Carlos", "extra")
  rescue => e
    puts "Error con lambda: #{e.message}"
  end
  
  # En un Proc no es necesario el número exacto de argumentos:
  saludo.call("Luis", "extra")  # ¡Hola, Luis!
  