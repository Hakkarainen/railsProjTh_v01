json.array!(@player_statuses) do |player_status|
  json.extract! player_status, :id, :playerID, :timeStamp, :gameStatus, :gameConfigID, :gameLevel, :gameScore1, :gameScore2, :gameScore3, :gameScore4, :gameScore5, :gameScore6, :gameScore7, :gameScore8, :gameScore9, :gameScore10
  json.url player_status_url(player_status, format: :json)
end
