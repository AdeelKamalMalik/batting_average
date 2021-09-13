class CreateBattings < ActiveRecord::Migration[6.1]
  def change
    create_table :battings do |t|
      t.string :player_id
      t.string :year_id
      t.integer :stint
      t.string :team_id
      t.string :lg_id
      t.float :g
      t.float :ab
      t.float :r
      t.float :h
      t.float :hr
      t.float :rbi
      t.float :sb
      t.float :cs
      t.float :bb
      t.float :so
      t.string :ibb
      t.string :hbp
      t.string :sh
      t.string :sf
      t.float :gidp

      t.timestamps
    end
  end
end
