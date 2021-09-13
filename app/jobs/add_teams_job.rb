require 'csv'
class AddTeamsJob < ApplicationJob
  queue_as :default

  def perform(path)
    upload_team_data(path)
  end

  def upload_team_data(path)
    CSV.foreach(path, :headers => true) do |row|
      team = Team.find_by(year_id: row['yearID'], team_id: row['teamID'])
      if team.present?
        team.update!(row.to_h.deep_transform_keys! { |key| key.underscore })
      else
        Team.create!(row.to_h.deep_transform_keys! { |key| key.underscore })
      end
    end
  rescue StandardError => e
    puts e.message
  end
end
