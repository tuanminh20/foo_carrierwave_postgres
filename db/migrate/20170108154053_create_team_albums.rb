class CreateTeamAlbums < ActiveRecord::Migration
  def change
    create_table :team_albums do |t|
      t.references :team, index: true, foreign_key: true
      t.string :name
      t.string :desc
      t.string :area

      t.timestamps null: false
    end
  end
end
