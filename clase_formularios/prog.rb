
require "sinatra"
require "pry-nav"


get '/' do
  # binding.pry
  if request.cookies["email"] && request.cookies["password"]
    erb :index
  else
    redirect '/login'
  end
end

get  '/login' do
  erb :login, layout: :layout_home
end

post '/login' do
  # cookies[:email] = params[:email]
  # cookies[:password] = params[:password]
  response.set_cookie('email', value: params[:email])
  response.set_cookie('password', value: params[:password])
  # binding.pry
  redirect '/'
end

get '/form' do
  erb :form
end

get '/saludo' do
  @datos = params
  erb :datos
end
