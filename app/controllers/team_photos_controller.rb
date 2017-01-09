class TeamPhotosController < ApplicationController
  def new
  end

  def create
    team_photo_params[:contents].each do

    end
  end

  private
  def team_photo_params
    params.require(:team_photo).permit({contents: []})
  end
end
