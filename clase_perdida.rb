require "bundler/setup"
Bundler.require( :default)


get "/" do
  @name = "Christian Caro"
    erb :index
end

get "/home" do
  @greet = "Hola como estas"
  erb :home,layout: :layout_home
end


#envia un saludo a la vista
get "/contact" do
   erb :contact
end

get "/products" do
  @products = [
  {food: "hamburguesa", price: 15.000, description: "100 grs de carne envuelta en dos panes con ajonjolí" },
  {food: "perro", price: 4.500, description: "salchica y salsa con pan" },
  {food: "chuzo", price: 12.000, description: "pollo envuelto e un palo de madera" },
  {food: "Salchipapas", price: 8.000, description: "lo más rico del mundo" },
  ]
  erb :products

end

#se manda el email y el telefono
post "hello-from-form" do
  name = params[:name]
  "Hola #{params[:name]} te saludo"
end

#Query string es opcional
get "/greet" do
    "Hola #{params[:name]}"
end

#Que reciba figura y atributos en query string
get "/rectangle_area" do
  "El area de tu rectangulo es: #{params[:base].to_i * params[:altura].to_i}"
end

#figura
get "/figura/:tipo" do
  figura = params[:tipo]
  base = params[:base]
  altura = params[:altura]
  case figura
  when "Cuadrado" then "El area de #{figura} es #{base.to_i + altura.to_i}"
  when "triangulo" then "El area de #{figura} es #{(base.to_i + altura.to_i) / 2}"
  end
end

#parametro es obligaorio
get "/age-in-5-years/:age" do
    @age = params[:age].to_i
    "Tu edad en 5 años será: #{@age + 5}"
end

#Es para responder con codigo a un error especifico
get "/" do
  status 200
  headers "Content-Type" => "text/html"
  body "Hola mundo"
    # [200, {"Content-Type" => "text/html" }, "Hola Mundo"]
end

post "/make-a-post" do
  [200, {"Content-Type" => "text/html" }, "Hiciste un post"]
end

put "/make-a-put" do
  [200, {"Content-Type" => "text/html" }, "Hiciste un put"]
end

delete "/make-a-delete" do
  [200, {"Content-Type" => "text/html" }, "Hiciste un delete"]
end


#HTTParty.put("http://localhost:4567/make-a-put", :headers => {"Content-Type" => "application/json"})
