require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarklist'
require 'pg'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    redirect "/bookmarks"
  end

  get '/bookmarks' do
    @bookmark_list = BookmarkList.all
    erb :'bookmarks/index'
  end

  post '/added' do
    BookmarkList.add(params[:add_bookmark])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end