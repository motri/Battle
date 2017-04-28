require_relative './player'

class Game

  attr_reader :player1, :player2, :turn, :not_in_turn

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @turn = @player2
    @not_in_turn = @player1
  end

  def turn_switcher
    @turn = @not_in_turn
    @not_in_turn =  (@not_in_turn == @player2 ?  @player1 : @player2)
  end

  def attack
    turn_switcher.reduce_hp
  end

  def loser?

    @player1.hp == 0 || @player2.hp == 0
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

def self.instance
  @game
end


end
