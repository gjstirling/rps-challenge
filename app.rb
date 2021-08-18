require "sinatra"
require "sinatra/base"
require "sinatra/reloader" if development?

class Rps < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do 
    erb :index
  end 

  post '/start' do 
    p params
    @player_name=params[:player_name]
    erb :start
  end 

  post '/result' do 
    #"result of match"
  end

  # start the server if ruby file executed directly
  # run! if app_file ==$0
end 
