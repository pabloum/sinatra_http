require 'sinatra'

get '/' do
  if request.env["HTTP_PERMISO"] == "soy-un-token-secreto"
    msn = "Si lo logramos!"
  else
    msn = "Sin Permiso"
  end

  msn
end

# curl -XGET -H "permiso: soy-un-token-secreto" "http://localhost:4567/"
