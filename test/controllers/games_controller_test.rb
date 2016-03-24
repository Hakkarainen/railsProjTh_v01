require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { bestResult: @game.bestResult, conditionsInfo: @game.conditionsInfo, gameGenre: @game.gameGenre, gameID: @game.gameID, gameName: @game.gameName, gamePublYear: @game.gamePublYear, gamePublisher: @game.gamePublisher, gameVersion: @game.gameVersion, playCount: @game.playCount, playerCount: @game.playerCount, pricePoint1: @game.pricePoint1, pricePoint2: @game.pricePoint2, pricePoint3: @game.pricePoint3, pricePoint4: @game.pricePoint4, secondBestResult: @game.secondBestResult, thirdBestResult: @game.thirdBestResult }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { bestResult: @game.bestResult, conditionsInfo: @game.conditionsInfo, gameGenre: @game.gameGenre, gameID: @game.gameID, gameName: @game.gameName, gamePublYear: @game.gamePublYear, gamePublisher: @game.gamePublisher, gameVersion: @game.gameVersion, playCount: @game.playCount, playerCount: @game.playerCount, pricePoint1: @game.pricePoint1, pricePoint2: @game.pricePoint2, pricePoint3: @game.pricePoint3, pricePoint4: @game.pricePoint4, secondBestResult: @game.secondBestResult, thirdBestResult: @game.thirdBestResult }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
