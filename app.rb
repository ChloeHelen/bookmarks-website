require 'sinatra/base'
require './lib/bookmarks.rb'

class HelloWorld < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/add' do
    erb :'add/index'
  end

  get '/bookmarks' do
    @all = Bookmarks.all
    erb :'bookmarks/index'
  end

  post '/add' do
    Bookmarks.add(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
