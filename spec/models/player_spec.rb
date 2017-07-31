require "spec_helper"

RSpec.describe Player do
  let(:this_player) { Player.new('Bart Simpson', 'Catcher', 'Simpson Slammers') }
  # Player specs go here.
  describe '.new' do
    # let(:this_player) { Player.new('Bart Simpson', 'Catcher', 'Simpson Slammers') }
    it 'creates a new Player' do
      expect(this_player).to be_a(Player)
    end

    it 'sets player name' do
      expect(this_player.name).to eq('Bart Simpson')
    end

    it 'sets player position' do
      expect(this_player.position).to eq('Catcher')
    end

    it 'sets player team' do
      expect(this_player.team).to eq('Simpson Slammers')
    end
  end

  describe'#name' do
    it 'has a reader for name' do
      expect(this_player.name).to eq('Bart Simpson')
    end
  end

  describe'#position' do
    it 'has a reader for position' do
      expect(this_player.position).to eq('Catcher')
    end
  end

  describe '#team' do
    it 'it has a reader for team' do
      expect(this_player.team).to eq('Simpson Slammers')
    end
  end

  describe '#self.all' do
    it 'returns an array of Player objects from the ROLL_CALL array' do
      expect(Player.all).to be_a(Array)
    end
  end
end
