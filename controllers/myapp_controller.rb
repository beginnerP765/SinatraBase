require_relative 'base'

class MyappController < Base
  get '/myapp' do
    @message = "hello"
    erb :"myapp/index"
  end

  get '/myapp/sub' do
    erb :"myapp/sub"
  end

  get '/error' do
    raise
  end
end