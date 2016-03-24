json.array!(@game_statuses) do |game_status|
  json.extract! game_status, :id, :gameStatusID, :gameConfigID, :gameLevel, :snapshotID
  json.url game_status_url(game_status, format: :json)
end
