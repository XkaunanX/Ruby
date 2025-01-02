# Definición de un modelo en Rails
class Usuario < ApplicationRecord
    # Validaciones
    validates :nombre, presence: true
    validates :email, presence: true, uniqueness: true
  
    # Asociaciones
    has_many :posts
  
    # Métodos de instancia
    def saludo
      "¡Hola, #{nombre}!"
    end
  end
  
  # Crear un nuevo usuario
  usuario = Usuario.new(nombre: "Juan", email: "juan@example.com")
  usuario.save if usuario.valid?
  
  # Buscar usuarios
  usuarios = Usuario.where(edad: 30)
  
  # Imprimir el saludo
  puts usuario.saludo  # ¡Hola, Juan!
  