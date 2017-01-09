class TeamPhoto < ActiveRecord::Base
  belongs_to :team_album
  mount_uploader :content, TeamPhotoUploader
end
