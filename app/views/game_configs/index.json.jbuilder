json.array!(@game_configs) do |game_config|
  json.extract! game_config, :id, :gameConfigID, :gameID, :gameConfP1, :gameConfP2, :gameConfP3, :gameConfP4, :gameConfP5, :gameConfP6, :gameConfP7, :gameConfP8, :gameConfP9, :gameConfP10
  json.url game_config_url(game_config, format: :json)
end
