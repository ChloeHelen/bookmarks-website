require 'sinatra/base'

class HelloWorld < Sinatra::Base

  get '/' do
    "List"
  end

  run! if app_file == $0

end
