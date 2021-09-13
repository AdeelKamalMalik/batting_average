class Batting < ApplicationRecord

  def team
    Team.find_by(team_id: team_id)
  end
end
