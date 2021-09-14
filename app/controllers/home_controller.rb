require 'csv'
class HomeController < ApplicationController
  def index
    @battings = Batting.select('team_id, player_id, year_id, ROUND((SUM(h)/NULLIF(SUM(ab), 0)), 3) as batting_average')
                 .group([:player_id, :year_id]).limit(200)
  end

  def create
    teams = File.open(params[:teams])
    AddTeamsJob.perform_later(teams.path)
    batting = File.open(params[:batting])
    AddBattingJob.perform_later(batting.path)
    flash[:success] = "it will take some time to generate the data"
    redirect_to root_path
  end
end
