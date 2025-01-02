# Requiere la gema 'sinatra'
require 'sinatra'

# Ruta raíz
get '/' do
  "¡Hola, Mundo!"
end

# Ruta con parámetro
get '/saludo/:nombre' do
  "¡Hola, #{params[:nombre]}!"
end

# Ruta con formulario
get '/formulario' do
  erb :formulario
end

# Ruta que maneja el envío de un formulario
post '/formulario' do
  "Recibido: #{params[:mensaje]}"
end

# Iniciar la aplicación
# Para correr esta app, ejecuta el comando `ruby sinatra-app.rb` en la terminal
