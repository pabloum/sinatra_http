require 'sinatra'
# require 'datamapper'

get '/' do
  erb :abuela_sorda
end

post '/' do
  if params[:msn] == params[:msn].upcase
    "Ahhh si, manzanas!"
  else
    "Habla más duro mijito"
  end
  # redirect '/'
end
