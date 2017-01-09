class CreateTeamPhotos < ActiveRecord::Migration
  def change
    create_table :team_photos do |t|
      t.references :team_album, index: true, foreign_key: true
      t.string :desc
      t.string :content

      t.timestamps null: false
    end
  end
end
