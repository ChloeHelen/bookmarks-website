require 'sinatra/base'
require './lib/bookmarks.rb'

class HelloWorld < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark = Bookmarks.new
    @all = @bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0

end
