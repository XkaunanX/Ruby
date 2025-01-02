require 'json'

# Parseo de un string JSON
json_data = '{"nombre": "Juan", "edad": 30, "ciudad": "Madrid"}'
parsed_data = JSON.parse(json_data)

puts parsed_data["nombre"]  # Juan
puts parsed_data["edad"]    # 30

# Convertir un hash a JSON
ruby_hash = { nombre: "Ana", edad: 25, ciudad: "Barcelona" }
json_string = JSON.generate(ruby_hash)
puts json_string  # {"nombre":"Ana","edad":25,"ciudad":"Barcelona"}
