
require_relative '../app'
require_relative '../lib/player'

describe Game do
  let(:player1) { Player.new(:peter) }
  let(:player2) { Player.new(:unai) }
  let(:game) { described_class.new(player1, player2) }

  describe '#turn_switcher' do
    it 'changes the player attacking' do
      expect(game.turn_switcher).to eq game.player2
      expect(game.turn_switcher).to eq game.player1
    end
  end

  describe '#attack higher damage' do
    it 'reduces the other players hp points' do
      srand(2)
      expect { game.attack }.to change { player2.hp }.by(-20)
    end
  end
end
