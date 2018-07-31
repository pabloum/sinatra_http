require 'sinatra'

get '/' do
    <<-HTML
      <h1>Hola dime a quién quieres saludar</h1>
      <form class="" action="/nuevo" method="post">
        <input type="text" name="verbo" >
        <input type="submit" name="primero" value="¡Hola!">
      </form>
    HTML
end

post '/nuevo' do
  "Hola #{params[:verbo]}"
end
