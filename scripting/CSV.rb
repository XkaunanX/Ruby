require 'csv'

# Leer un archivo CSV
CSV.foreach('datos.csv', headers: true) do |row|
  puts row["nombre"], row["edad"]
end

# Escribir en un archivo CSV
CSV.open('salida.csv', 'w') do |csv|
  csv << ["nombre", "edad", "ciudad"]
  csv << ["Juan", 30, "Madrid"]
  csv << ["Ana", 25, "Barcelona"]
end
