# Definición de una clase para una lista enlazada
class Nodo
    attr_accessor :dato, :siguiente
  
    def initialize(dato)
      @dato = dato
      @siguiente = nil
    end
  end
  
  class ListaEnlazada
    def initialize
      @cabeza = nil
    end
  
    # Insertar un elemento al final
    def insertar(dato)
      nuevo_nodo = Nodo.new(dato)
      if @cabeza.nil?
        @cabeza = nuevo_nodo
      else
        ultimo = @cabeza
        while ultimo.siguiente
          ultimo = ultimo.siguiente
        end
        ultimo.siguiente = nuevo_nodo
      end
    end
  
    # Imprimir todos los elementos
    def imprimir
      nodo = @cabeza
      while nodo
        print "#{nodo.dato} -> "
        nodo = nodo.siguiente
      end
      puts "nil"
    end
  end
  
  # Crear y manipular la lista
  lista = ListaEnlazada.new
  lista.insertar(10)
  lista.insertar(20)
  lista.insertar(30)
  lista.imprimir  # 10 -> 20 -> 30 -> nil
  