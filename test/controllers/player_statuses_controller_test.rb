require 'test_helper'

class PlayerStatusesControllerTest < ActionController::TestCase
  setup do
    @player_status = player_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_status" do
    assert_difference('PlayerStatus.count') do
      post :create, player_status: { gameConfigID: @player_status.gameConfigID, gameLevel: @player_status.gameLevel, gameScore10: @player_status.gameScore10, gameScore1: @player_status.gameScore1, gameScore2: @player_status.gameScore2, gameScore3: @player_status.gameScore3, gameScore4: @player_status.gameScore4, gameScore5: @player_status.gameScore5, gameScore6: @player_status.gameScore6, gameScore7: @player_status.gameScore7, gameScore8: @player_status.gameScore8, gameScore9: @player_status.gameScore9, gameStatus: @player_status.gameStatus, playerID: @player_status.playerID, timeStamp: @player_status.timeStamp }
    end

    assert_redirected_to player_status_path(assigns(:player_status))
  end

  test "should show player_status" do
    get :show, id: @player_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_status
    assert_response :success
  end

  test "should update player_status" do
    patch :update, id: @player_status, player_status: { gameConfigID: @player_status.gameConfigID, gameLevel: @player_status.gameLevel, gameScore10: @player_status.gameScore10, gameScore1: @player_status.gameScore1, gameScore2: @player_status.gameScore2, gameScore3: @player_status.gameScore3, gameScore4: @player_status.gameScore4, gameScore5: @player_status.gameScore5, gameScore6: @player_status.gameScore6, gameScore7: @player_status.gameScore7, gameScore8: @player_status.gameScore8, gameScore9: @player_status.gameScore9, gameStatus: @player_status.gameStatus, playerID: @player_status.playerID, timeStamp: @player_status.timeStamp }
    assert_redirected_to player_status_path(assigns(:player_status))
  end

  test "should destroy player_status" do
    assert_difference('PlayerStatus.count', -1) do
      delete :destroy, id: @player_status
    end

    assert_redirected_to player_statuses_path
  end
end
