require "sinatra"

get '/' do
  @name = 'Pablo'
  erb :index
end


get '/home' do
  @saludo = "Welcome to my first app with sinatra"
end

get '/contact' do
  @telefono = 2381513
  @email = "pablo@pablo.com"
  erb :index
end

get '/products' do
  @productos = [1,2,3,4,5]
  erb :index
end
