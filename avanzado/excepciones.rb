# Capturar excepciones
begin
    # Código que puede generar un error
    resultado = 10 / 0
  rescue ZeroDivisionError
    puts "No se puede dividir por cero."
  rescue => e
    puts "Ocurrió un error: #{e.message}"
  ensure
    puts "Este bloque siempre se ejecuta."
  end
  
  # Crear excepciones personalizadas
  class MiError < StandardError; end
  
  begin
    raise MiError, "Este es un error personalizado."
  rescue MiError => e
    puts "Error: #{e.message}"
  end
  