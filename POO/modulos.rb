# Definición de módulo
module Volador
    def volar
      puts "Estoy volando."
    end
  end
  
  # Clase que incluye el módulo
  class Pajaro
    include Volador
  end
  
  # Clase que también incluye el módulo
  class Avion
    include Volador
  end
  
  # Creación de objetos
  pajaro = Pajaro.new
  avion = Avion.new
  
  pajaro.volar  # Estoy volando.
  avion.volar   # Estoy volando.
  