require 'test_helper'

class GameStatusesControllerTest < ActionController::TestCase
  setup do
    @game_status = game_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_status" do
    assert_difference('GameStatus.count') do
      post :create, game_status: { gameConfigID: @game_status.gameConfigID, gameLevel: @game_status.gameLevel, gameStatusID: @game_status.gameStatusID, snapshotID: @game_status.snapshotID }
    end

    assert_redirected_to game_status_path(assigns(:game_status))
  end

  test "should show game_status" do
    get :show, id: @game_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_status
    assert_response :success
  end

  test "should update game_status" do
    patch :update, id: @game_status, game_status: { gameConfigID: @game_status.gameConfigID, gameLevel: @game_status.gameLevel, gameStatusID: @game_status.gameStatusID, snapshotID: @game_status.snapshotID }
    assert_redirected_to game_status_path(assigns(:game_status))
  end

  test "should destroy game_status" do
    assert_difference('GameStatus.count', -1) do
      delete :destroy, id: @game_status
    end

    assert_redirected_to game_statuses_path
  end
end
