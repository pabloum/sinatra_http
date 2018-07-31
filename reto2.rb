get '/makers/:nombre' do
    nombre = params[:nombre]
    nombre[0] = nombre[0].upcase
    <<-HTML
      <h1>Hola #{nombre}!</h1>
    HTML
end
