# Creación de un hash
persona = {
  "nombre" => "Juan",
  "edad" => 25,
  "ocupacion" => "Ingeniero"
}

# Acceso a valores
puts persona["nombre"]  # Juan

# Métodos comunes de hashes
persona["ciudad"] = "Madrid"    # Agregar o actualizar un valor
puts persona["ciudad"]          # Madrid
persona.delete("ocupacion")     # Eliminar un elemento
puts persona.keys               # ["nombre", "edad", "ciudad"]
puts persona.values             # ["Juan", 25, "Madrid"]

# Iterar sobre un hash
persona.each do |clave, valor|
  puts "#{clave}: #{valor}"
end

# Métodos útiles
puts persona.has_key?("edad")   # true
puts persona.empty?             # false
