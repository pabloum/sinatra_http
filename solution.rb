require 'sinatra'
# require 'datamapper'
# before do
#   headers "HTTP_AUTH" => "test"
#   headers "Content-Type" => "text/html; charset=utf-8"
# end


get '/' do
  header = "test"
  header = headers["HTTP_USER-AGENT"]
  "hola mundo -#{header}- maricón"
end
