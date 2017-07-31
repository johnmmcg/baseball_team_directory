require 'pry'
require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  "<h2>The LACKP Homepage<h2>

  <a href='/teams'><h3>Teams</h3></a>

  <a href='/positions'><h3>Positions</h3></a>
  <img src='http://clipartix.com/wp-content/uploads/2016/12/Baseball-clip-art-for-kids-clipart.jpeg'>"

  # binding.pry
end

get "/teams" do
  @team_data = TeamData::ROLL_CALL
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @team_name = params[:team_name]
  @team = Team.new(@team_name)
  @players = @team.players
  erb :team_name
end

get "/positions" do
  @positions = TeamData::ROLL_CALL.values
  erb :positions
end

get "/positions/:position" do
  @position = params[:position]
  @players = Player.all
  erb :players_by_position
end
