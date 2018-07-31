require 'sinatra'

get '/' do
  unless params[:nombre]
    'Salut, monde gonorrea ome gonorrea'
  else
    "Hola, #{params[:nombre]} ome gonorrea ome"
  end
  # <<-HTML
  #   <form class="" action="/nuevo/objeto" method="post">
  #     <input type="text" name="verbo" value="post">
  #     <input type="submit" name="primero" value="Estoy haciendo una petición post">
  #   </form>
  # HTML
  erb : index
end


post '/nuevo/objeto' do
  "hemos creado un nuevo objeto con el verbo #{params[:verbo]}"
end


# get '/pablo' do ## He mapeado mi segunda ruta a el root y luego a pablo
# get '/:nombre' do ## Argumentos con dos puntos :  y el nombre de la vble
#   "Hola #{params[:nombre]}"
# end



=begin
para definir la ruta:  debemos usar el verbo quequeremos.

Los disponibles:    get post patch put delete
      get : (((siempre lo usamos cuanqdo queremos que el navegador le pida al servidor que le devuelva html, que le devuelva información. No crea ni base de datos ni modificando nada ni borrando nada. )))

      post : crear algo dentro de un sistema de almacenamiento persistente, sea una BBDD, cualquiert tipo de sistema persitente donde guardemos información y creemos información

      patch :
      put :
      delete :

'/' representa el root de la aplicación


creamos un bloque dentro del cual especifico qué quiero que sinatra le diga a la aplicacion que pase dentro de esta rut.

devuelva string "salut, monde"

sinatra usa el localhost 4567
=end
