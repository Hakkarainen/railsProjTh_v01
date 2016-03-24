json.array!(@players) do |player|
  json.extract! player, :id, :playerID, :sessionID, :nickName, :password, :role, :priviLedges, :firstName, :surName, :lastLogInTime, :gameSubsriptionID, :gameToLogID, :gameEventLogID, :loggingOnOffToggle, :eLogPeriodBeging, :eLogPeriodEnd, :eventLoggingInfo
  json.url player_url(player, format: :json)
end
