class TeamAlbum < ActiveRecord::Base
  belongs_to :team
  has_many :team_photos
  accepts_nested_attributes_for :team_photos
end
