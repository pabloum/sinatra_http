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
