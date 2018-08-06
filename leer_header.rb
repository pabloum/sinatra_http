require 'sinatra'
# require 'datamapper'
# before do
#   headers "HTTP_AUTH" => "test"
#   headers "Content-Type" => "text/html; charset=utf-8"
# end


get '/' do
  request.user_agent
  header = request.env["HTTP_USER_AGENT"]
  "#{header}"
end
