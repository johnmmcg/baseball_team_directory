require "spec_helper"

RSpec.describe Team do
  # Team specs go here.
  let(:team) { Team.new("Simpson Slammers")}

  describe '.new' do
    it 'creates a team' do
      expect(team).to be_a(Team)
    end
  end

  describe '#name' do
    it 'assigns and reads name' do
      expect(team.name).to eq('Simpson Slammers')
    end
  end

  describe '#self.all' do
    it 'returns array of all teams' do
      expect(Team.all).to be_a(Array)
    end
  end
  
  describe '#players' do
    it 'returns an array of Player object that correspond to every player of that particular team' do
      expect(team.players).to be_a(Array)
    end
  end
end
