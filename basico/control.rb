# Condicionales
age = 18
if age >= 18
  puts "Eres adulto."
else
  puts "Eres menor de edad."
end

# Bucles
# Bucle while
count = 1
while count <= 5
  puts "Contando: #{count}"
  count += 1
end

# Bucle for
for i in 1..5
  puts "Número: #{i}"
end

# Bucle each
[1, 2, 3, 4, 5].each do |number|
  puts "Número: #{number}"
end
