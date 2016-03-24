require 'test_helper'

class GameConfigsControllerTest < ActionController::TestCase
  setup do
    @game_config = game_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_config" do
    assert_difference('GameConfig.count') do
      post :create, game_config: { gameConfP10: @game_config.gameConfP10, gameConfP1: @game_config.gameConfP1, gameConfP2: @game_config.gameConfP2, gameConfP3: @game_config.gameConfP3, gameConfP4: @game_config.gameConfP4, gameConfP5: @game_config.gameConfP5, gameConfP6: @game_config.gameConfP6, gameConfP7: @game_config.gameConfP7, gameConfP8: @game_config.gameConfP8, gameConfP9: @game_config.gameConfP9, gameConfigID: @game_config.gameConfigID, gameID: @game_config.gameID }
    end

    assert_redirected_to game_config_path(assigns(:game_config))
  end

  test "should show game_config" do
    get :show, id: @game_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_config
    assert_response :success
  end

  test "should update game_config" do
    patch :update, id: @game_config, game_config: { gameConfP10: @game_config.gameConfP10, gameConfP1: @game_config.gameConfP1, gameConfP2: @game_config.gameConfP2, gameConfP3: @game_config.gameConfP3, gameConfP4: @game_config.gameConfP4, gameConfP5: @game_config.gameConfP5, gameConfP6: @game_config.gameConfP6, gameConfP7: @game_config.gameConfP7, gameConfP8: @game_config.gameConfP8, gameConfP9: @game_config.gameConfP9, gameConfigID: @game_config.gameConfigID, gameID: @game_config.gameID }
    assert_redirected_to game_config_path(assigns(:game_config))
  end

  test "should destroy game_config" do
    assert_difference('GameConfig.count', -1) do
      delete :destroy, id: @game_config
    end

    assert_redirected_to game_configs_path
  end
end
