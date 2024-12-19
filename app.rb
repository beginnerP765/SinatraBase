require 'sinatra'
require_relative 'controllers/myapp_controller'
require_relative 'controllers/content_controller'

class MyApp < Sinatra::Base
  use MyappController
  use ContentController
  
  not_found do
    status 404
    erb :'errors/404'
  end
end