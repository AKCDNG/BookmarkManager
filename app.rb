require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarklist'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmark_list = BookmarkList.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end