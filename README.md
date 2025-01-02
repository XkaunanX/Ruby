# Ruby

Ruby es un lenguaje de programacion de alto nivel, dinamico y orientado a objetos. Es conocido por su sintaxis sencilla y elegante, lo que lo hace ideal para desarrollo rapido. Ruby enfatiza la simplicidad y productividad, permitiendo escribir codigo limpio y legible. Fue creado con el objetivo de hacer la programacion divertida para los desarrolladores.

## En que contexto nacio Ruby

Ruby fue creado por Yukihiro Matsumoto en 1993 en Japon. Su objetivo era combinar las mejores caracteristicas de otros lenguajes de programacion como Perl, Smalltalk y Lisp, con un enfoque en la simplicidad y la productividad.

## Caracteristicas Principales

### Lenguaje de alto nivel

Ruby es un lenguaje de alto nivel, lo que significa que abstrae muchos de los detalles complejos de la gestion de hardware y memoria. Esto permite a los desarrolladores enfocarse en resolver problemas sin preocuparse por detalles bajos como la gestion de memoria o la optimizacion de rendimiento a nivel de hardware.

### Uso de punteros

Ruby no utiliza punteros de la misma manera que lenguajes como C o C++. En lugar de punteros directos, Ruby maneja objetos a traves de referencias internas, lo que simplifica la gestion de memoria.

### Paradigma y Explicación del Paradigma

Ruby es principalmente un lenguaje orientado a objetos, lo que significa que casi todo en Ruby es un objeto. Ademas, soporta otros paradigmas como la programacion funcional y la programacion imperativa, lo que le otorga gran flexibilidad. Los objetos en Ruby tienen metodos y propiedades, lo que permite organizar el codigo de manera modular y reutilizable.

```ruby
class Persona
  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end

  def saludar
    puts "Hola, mi nombre es #{@nombre} y tengo #{@edad} años."
  end
end

persona1 = Persona.new("Juan", 25)
persona1.saludar
```

### Tipo de Tipado

Ruby utiliza tipado dinamico, lo que significa que las variables no necesitan ser declaradas con un tipo especifico. El tipo de una variable es determinado en tiempo de ejecucion, lo que permite una mayor flexibilidad pero tambien puede llevar a errores si no se gestionan correctamente.

### Compilado

Ruby es un lenguaje interpretado, no compilado. Esto significa que el codigo Ruby es ejecutado directamente por el interprete, sin necesidad de una fase de compilacion previa.

### Ruby en la Web

Ruby es muy popular en el desarrollo web, principalmente debido al marco de trabajo Ruby on Rails, que facilita el desarrollo rapido de aplicaciones web. Rails proporciona una estructura para el desarrollo de aplicaciones basadas en el modelo vista-controlador (MVC) y ayuda a reducir el tiempo de desarrollo.

```ruby
# Un ejemplo básico de un controlador en Ruby on Rails

class ArticlesController < ApplicationController
  # Acción para mostrar todos los artículos
  def index
    @articles = Article.all
  end

  # Acción para mostrar un artículo específico
  def show
    @article = Article.find(params[:id])
  end

  # Acción para crear un nuevo artículo
  def new
    @article = Article.new
  end

  # Acción para guardar un artículo nuevo
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private

  # Parámetros permitidos para evitar la inyección de datos no deseados
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
```

### Manejo de Memoria

Ruby maneja la memoria de manera automatica mediante un recolector de basura, lo que significa que no es necesario que el programador libere manualmente la memoria. Esto reduce la probabilidad de errores relacionados con la gestion de memoria y hace que el desarrollo sea mas sencillo.

### Manejo de Errores

Ruby utiliza excepciones para el manejo de errores. Cuando ocurre un error, el flujo de ejecucion del programa se interrumpe y se lanza una excepcion. Los programadores pueden manejar estas excepciones utilizando bloques `begin-rescue`, lo que les permite capturar y procesar errores de manera controlada.

### Concurrencia

Ruby permite la programacion concurrente a traves de hilos (threads). Sin embargo, debido al Global Interpreter Lock (GIL) en MRI (el interprete de Ruby mas utilizado), solo un hilo puede ejecutar codigo Ruby a la vez. Esto limita la concurrencia en aplicaciones que necesitan procesamiento paralelo intensivo. Sin embargo, existen soluciones como el uso de hilos de bajo nivel o la libreria `concurrent-ruby` para manejar la concurrencia.

### Ruby y las API REST

Ruby es muy utilizado en el desarrollo de API RESTful. A traves de frameworks como Ruby on Rails y Sinatra, es posible construir facilmente aplicaciones que exponen servicios a traves de HTTP y permiten la comunicacion entre diferentes sistemas.

```ruby
# Configuración de rutas en config/routes.rb
Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :create, :update, :destroy]
  # Se definen las rutas para las acciones RESTful
end

# Controlador de la API en app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  # Desactiva la verificación CSRF para API (solo en este ejemplo)
  skip_before_action :verify_authenticity_token
  
  # GET /articles - Obtener todos los artículos
  def index
    @articles = Article.all
    render json: @articles, status: :ok
  end

  # GET /articles/:id - Obtener un artículo por ID
  def show
    @article = Article.find_by(id: params[:id])
    if @article
      render json: @article, status: :ok
    else
      render json: { error: "Article not found" }, status: :not_found
    end
  end

  # POST /articles - Crear un nuevo artículo
  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json: { error: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT /articles/:id - Actualizar un artículo existente
  def update
    @article = Article.find_by(id: params[:id])
    if @article
      if @article.update(article_params)
        render json: @article, status: :ok
      else
        render json: { error: @article.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { error: "Article not found" }, status: :not_found
    end
  end

  # DELETE /articles/:id - Eliminar un artículo
  def destroy
    @article = Article.find_by(id: params[:id])
    if @article
      @article.destroy
      render json: { message: "Article deleted" }, status: :ok
    else
      render json: { error: "Article not found" }, status: :not_found
    end
  end

  private

  # Filtro de parámetros permitidos para proteger contra inyecciones
  def article_params
    params.require(:article).permit(:title, :body)
  end
end

# Modelo Article en app/models/article.rb
class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end
```

### Metaprogramacion

Ruby soporta la metaprogramacion, que permite escribir codigo que modifica o genera otros codigos en tiempo de ejecucion. Esto incluye la capacidad de definir metodos dinamicamente, alterar clases y objetos, y modificar la estructura del programa en tiempo real. La metaprogramacion es una caracteristica poderosa, pero debe ser utilizada con cuidado para evitar que el codigo se vuelva complejo e impredecible.

```ruby
class Persona
  # Usamos metaprogramación para definir métodos dinámicamente
  def self.crear_metodo(nombre)
    define_method(nombre) do
      "Este es el método #{nombre}"
    end
  end
end

# Creamos un método dinámico llamado 'saludar'
Persona.crear_metodo("saludar")

# Ahora podemos llamar al método 'saludar' en una instancia de Persona
persona = Persona.new
puts persona.saludar  # Salida: Este es el método saludar

# Crear otro método dinámico llamado 'despedirse'
Persona.crear_metodo("despedirse")
puts persona.despedirse  # Salida: Este es el método despedirse
```
