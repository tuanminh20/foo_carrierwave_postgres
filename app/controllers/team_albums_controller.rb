class TeamAlbumsController < ApplicationController
  before_action :set_team
  before_action :set_team_album, only: [:show, :edit, :update, :destroy]

  # GET /team_albums
  # GET /team_albums.json
  def index
    @team_albums = @team.team_albums.all
  end

  # GET /team_albums/1
  # GET /team_albums/1.json
  def show
  end

  # GET /team_albums/new
  def new
    @team_album = TeamAlbum.find(1)

    binding.pry
    team_photo_params[:team_photos].each do |file_content|
      @team_album.team_photos.build(file_content)
    end

    @team_album
  end

  # GET /team_albums/1/edit
  def edit
  end

  # POST /team_albums
  # POST /team_albums.json
  def create
    binding.pry
    @team_album = @team.team_albums.new(team_album_params)
    @team_album.save
  end

  # PATCH/PUT /team_albums/1
  # PATCH/PUT /team_albums/1.json
  def update
    respond_to do |format|
      if @team_album.update(team_album_params)
        format.html { redirect_to @team_album, notice: 'Team album was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_album }
      else
        format.html { render :edit }
        format.json { render json: @team_album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_albums/1
  # DELETE /team_albums/1.json
  def destroy
    @team_album.destroy
    respond_to do |format|
      format.html { redirect_to team_albums_url, notice: 'Team album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_team
      @team = Team.find(params[:team_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_team_album
      @team_album = @team.team_albums.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_album_params
      params.require(:team_album).permit(:name, :desc, :area)
    end

    def team_photo_params
      params.require(:team_album).permit({team_photos: [:content]})
    end
end
