require 'sinatra/base'

class Base < Sinatra::Base
  set :root, File.expand_path("..", __dir__)
  set :views, Proc.new { File.join(root, "views") }

  # 静的ファイルのパスを設定
  set :public_folder, Proc.new { File.expand_path("../public", __dir__) }

  configure do
    # production モードに設定
    # set :environment, :production
  end

  before do
    # 現在の環境を表示
    # puts "Environment: #{settings.environment}"
  end

  error 500 do
    status 500
    erb :'errors/500'
  end
end
