require_relative "./team_data"

require 'pry'

class Player
  attr_reader :name, :position, :team

  def initialize(name, position, team)
    @name = name
    @position = position
    @team = team
  end

  def self.all
    team_data = TeamData::ROLL_CALL
    players_array = []
    team_data.each do |team|
      team[1].each do |player|
        position = player[0]
        name = player[1]
        team_name = team[0]
        new_player = Player.new(name, position, team_name)
        players_array << new_player
        # binding.pry
      end
    end
    players_array
  end
end
