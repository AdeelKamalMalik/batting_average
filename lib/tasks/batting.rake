namespace :batting do
  desc "Load data to database"
  task load_data: :environment do
    path = File.join(File.dirname(__FILE__), 'Teams.csv')
    puts '-----------loading Teams------------'
    AddTeamsJob.perform_now(path)
    puts '-----------Teams loaded------------'

    path = File.join(File.dirname(__FILE__), 'Batting.csv')
    puts '-----------loading Batting------------'
    AddBattingJob.perform_now(path)
    puts '-----------Batting loaded------------'
    puts 'Run rake batting:get_average to get average'
  end

  desc "Get player average of year"
  task get_average: :environment do
    batting = Batting.select('team_id, player_id, year_id, ROUND((SUM(h)/NULLIF(SUM(ab), 0)), 3) as batting_average')
                      .group([:player_id, :year_id])

    table = Text::Table.new
    table.head = ['PlayerID', 'yearId', 'Team name(s)', 'Batting Average']
    batting.each do |bat|
      table.rows << [bat.player_id, bat.year_id, bat.team&.name, bat.batting_average || 0.0]
    end
    puts table.to_s
  end

end
