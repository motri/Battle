require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
enable :sessions
set :session_secret, 'Beware of this dog.'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:play)
    # redirect '/victory' if
  end

  post '/button' do
    redirect '/victory'
  end

  get '/victory' do
    erb(:victory)
  end

  run! if app_file == $0
end
