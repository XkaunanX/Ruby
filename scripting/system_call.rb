# Ejecutar un comando del sistema
puts `ls -l`  # Listar archivos en el directorio actual

# Ejecutar un comando y capturar su salida
salida = `echo "Hola desde el sistema"`
puts salida  # Hola desde el sistema

# Ejecutar un comando con argumentos
system('mkdir', 'nuevo_directorio')  # Crear un nuevo directorio

# Comprobar el estado de un comando
if system('ls /no/existe')
  puts "Comando ejecutado correctamente"
else
  puts "Error al ejecutar el comando"
end
