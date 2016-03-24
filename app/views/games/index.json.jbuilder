json.array!(@games) do |game|
  json.extract! game, :id, :gameID, :gameName, :gameVersion, :gameGenre, :gamePublisher, :gamePublYear, :pricePoint1, :pricePoint2, :pricePoint3, :pricePoint4, :conditionsInfo, :playerCount, :playCount, :bestResult, :secondBestResult, :thirdBestResult
  json.url game_url(game, format: :json)
end
