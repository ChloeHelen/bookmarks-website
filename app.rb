require 'sinatra/base'

class HelloWorld < Sinatra::Base

  get '/' do
    "Hello world"
  end

  run! if app_file == $0

end
