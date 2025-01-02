require 'set'

# Creación de un set
conjunto = Set.new([1, 2, 3, 4, 5])

# Agregar y eliminar elementos
conjunto.add(6)    # Agregar un elemento
conjunto.delete(3) # Eliminar un elemento

# Operaciones con sets
set2 = Set.new([4, 5, 6, 7])

# Intersección
puts conjunto & set2  # {4, 5, 6}

# Unión
puts conjunto | set2  # {1, 2, 4, 5, 6, 7}

# Diferencia
puts conjunto - set2  # {1, 2}

# Verificar si contiene un elemento
puts conjunto.include?(5)  # true

# Iterar sobre un set
conjunto.each do |elemento|
  puts "Elemento: #{elemento}"
end
