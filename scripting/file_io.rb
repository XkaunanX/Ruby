# Escritura en un archivo
File.open('ejemplo.txt', 'w') do |f|
    f.puts "Hola, este es un ejemplo de escritura en un archivo."
    f.puts "Ruby es genial para automatizar tareas."
  end
  
  # Lectura de un archivo
  contenido = File.read('ejemplo.txt')
  puts contenido
  
  # Leer línea por línea
  File.foreach('ejemplo.txt') do |linea|
    puts "Línea: #{linea}"
  end
  