require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    params[:player2] == '' ? player2 = Ai.new :
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    redirect '/loser' if Game.instance.loser?

    erb :attack
  end

  get '/loser' do
    erb :loser
  end

  run! if app_file == $PROGRAM_NAME
end
