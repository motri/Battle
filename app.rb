require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:player1], params[:player2] )
    #  @player1 = Player.new(params[:player1])
    #  @player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
  end

  get '/attack' do
    @game = Game.instance
    @game.attack
    you_suck
    erb :attack
   end


    get '/loser' do
      erb :loser
    end

   run! if app_file == $0

  private

   def you_suck
     redirect '/loser' if Game.instance.loser?
   end

end
