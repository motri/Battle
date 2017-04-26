require 'player'

describe Player do
  let(:player) {described_class.new('Unai')}
  describe '#initialize' do
    it 'initializes a name' do
      expect(player.name).to eq 'Unai'
    end
  end
end
