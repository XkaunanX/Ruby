# Creación de un arreglo
arreglo = [1, 2, 3, 4, 5]

# Acceso a elementos
puts arreglo[0]  # 1

# Métodos comunes de arreglos
arreglo.push(6)        # Agrega un elemento al final
arreglo.unshift(0)     # Agrega un elemento al inicio
arreglo.pop            # Elimina el último elemento
arreglo.shift          # Elimina el primer elemento

# Iterar sobre un arreglo
arreglo.each do |elemento|
  puts "Elemento: #{elemento}"
end

# Métodos útiles
puts arreglo.include?(3)  # true
puts arreglo.length        # 6
puts arreglo.reverse       # [5, 4, 3, 2, 1, 0]
puts arreglo.sort          # [0, 1, 2, 3, 4, 5]
