require 'player'

describe Player do
  let(:player) { described_class.new(:peter) }
  let(:player2) { described_class.new(:unai) }
  describe '#name' do
    it 'assigns a player name when we initialize' do
      expect(player.name).to eq :peter
    end
  end
  describe '#hp' do
    it 'assigns a player health points' do
      expect(player.hp).to eq described_class::HP_DEFAULT
    end
  end

  describe '#reduce_hp' do
    it 'reduces the other players hp by 10 points' do
      srand(1)
      expect { player2.reduce_hp }.to change { player2.hp }.by(-10)
    end
  end
end
