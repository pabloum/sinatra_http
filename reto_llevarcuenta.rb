require 'sinatra'
# require 'datamapper'


class Counter
  attr_reader :cont

  def initialize
    @cont = 0
  end

  def sum(product)
    @cont += product.to_i
  end
end

cuenta = Counter.new

get '/' do
    @contador = cuenta.cont
    erb :suma_numeros
end
post '/runMethod' do
    cuenta.sum(params[:count])
    redirect '/'
end

# Solución de la página
# require 'sinatra'
#
# get '/' do
#   @number = params[:number]
#   erb :index
# end
#
# <!--  Dentro del archivo index.erb -->
#
# <% if @number %>
#   <h1>Mi cuenta es : <%= @number %></h1>
# <% else %>
#   <h1>Mi cuenta es : 0</h1>
#   <% @number = 0 %>
# <% end %>
# <form action="/">
#   <input type="hidden" value="<%= @number.to_i + 1 %>" name="number">
#   <input type="submit" value="Suma">
# </form>
