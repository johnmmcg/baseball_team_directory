require_relative "./team_data"

class Team
  attr_reader :name, :team_players

  def initialize(name)
    @name = name
  end

  def self.all
    teams_data = TeamData::ROLL_CALL
    teams_array = []
    teams_data.keys.each do |team_name|
      # binding.pry
      teams_array << Team.new(team_name)
    end
    teams_array
  end

  def players
    @team_players = []
    all_players = Player.all
    all_players.each do |player|
      if player.team.to_s == @name
        @team_players << player
      end
    end
    @team_players
  end
end
