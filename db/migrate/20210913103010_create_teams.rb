class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :year_id
      t.string :lg_id
      t.string :team_id
      t.string :franch_id
      t.string :div_id
      t.string :rank
      t.string :ghome
      t.string :div_win
      t.string :wc_win
      t.string :lg_win
      t.string :ws_win
      t.string :name
      t.string :park
      t.string :attendance
      t.string :bpf
      t.string :ppf
      t.string :team_idbr
      t.string :team_i_dlahman45
      t.string :team_i_dretro

      t.timestamps
    end
  end
end
