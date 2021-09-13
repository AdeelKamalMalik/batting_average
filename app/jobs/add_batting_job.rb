class AddBattingJob < ApplicationJob
  queue_as :default

  def perform(path)
    upload_player_data(path)
  end

  def upload_player_data(path)
    CSV.foreach(path, :headers => true) do |row|
      batting = Batting.find_by(year_id: row['yearID'], team_id: row['teamID'], player_id: row['playerID'])
      if batting.present?
        batting.update!(row.to_h.deep_transform_keys! { |key| key.underscore }.except("2_b", "3_b"))
      else
        Batting.create!(row.to_h.deep_transform_keys! { |key| key.underscore }.except("2_b", "3_b"))
      end
    end
  rescue StandardError => e
    Rails.logger.error e.message
    flash[:danger] = "Player file having error: " + e.message
  end
end
