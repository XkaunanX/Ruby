# config/routes.rb
Rails.application.routes.draw do
    get 'home/index'    # Ruta para la página de inicio
    get 'usuarios/:id'  # Ruta para ver un usuario específico
    resources :posts    # Rutas RESTful para manejar posts
  end
  
  # app/controllers/home_controller.rb
  class HomeController < ApplicationController
    def index
      @mensaje = "Bienvenido a la página de inicio"
    end
  end
  
  # app/controllers/usuarios_controller.rb
  class UsuariosController < ApplicationController
    def show
      @usuario = Usuario.find(params[:id])
    end
  end
  
  # app/controllers/posts_controller.rb
  class PostsController < ApplicationController
    def index
      @posts = Post.all
    end
  
    def show
      @post = Post.find(params[:id])
    end
  end
  