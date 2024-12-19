require_relative 'base'

class ContentController < Base
  get '/content' do
    erb :"content/index", mylayout
  end
end
