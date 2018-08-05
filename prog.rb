require "sinatra"

get '/' do
  # @name = 'Pablo'
  # erb :index
  "hola mundo"
end

get '/rectangulo/' do
  # @saludo = "Welcome to my first app with sinatra"
  "El área del rectángulo es #{params[:largo].to_i*params[:ancho].to_i}"
end

get '/circulo/' do
  # @telefono = 2381513
  # @email = "pablo@pablo.com"
  # erb :index
  "El área del circulo es #{Math::PI*(params[:radio].to_i)**2}"
end

get '/triangulo/' do
  "El área del triangulo es #{(params[:base].to_i)*(params[:altura].to_i)/2}"
end


get '/products' do
  @productos = [1,2,3,4,5]
  erb :index
end
