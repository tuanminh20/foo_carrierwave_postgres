require 'test_helper'

class TeamAlbumsControllerTest < ActionController::TestCase
  setup do
    @team_album = team_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_album" do
    assert_difference('TeamAlbum.count') do
      post :create, team_album: { area: @team_album.area, desc: @team_album.desc, name: @team_album.name, team_id: @team_album.team_id }
    end

    assert_redirected_to team_album_path(assigns(:team_album))
  end

  test "should show team_album" do
    get :show, id: @team_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_album
    assert_response :success
  end

  test "should update team_album" do
    patch :update, id: @team_album, team_album: { area: @team_album.area, desc: @team_album.desc, name: @team_album.name, team_id: @team_album.team_id }
    assert_redirected_to team_album_path(assigns(:team_album))
  end

  test "should destroy team_album" do
    assert_difference('TeamAlbum.count', -1) do
      delete :destroy, id: @team_album
    end

    assert_redirected_to team_albums_path
  end
end
