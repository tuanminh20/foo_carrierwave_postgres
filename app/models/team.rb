class Team < ActiveRecord::Base
  has_many :team_albums
  mount_uploader :cover_image, TeamCoverUploader
end
