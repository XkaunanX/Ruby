class Producto
    @@total_productos = 0  # Variable de clase
  
    def initialize(nombre, precio)
      @nombre = nombre
      @precio = precio
      @@total_productos += 1
    end
  
    # Método de clase
    def self.total_productos
      puts "Total de productos creados: #{@@total_productos}"
    end
  end
  
  # Creación de objetos
  producto1 = Producto.new("Camiseta", 20)
  producto2 = Producto.new("Pantalón", 40)
  
  # Llamada al método de clase
  Producto.total_productos  # Total de productos creados: 2
  