json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :subscriptionID, :gameSubsr1, :subscType, :gameSubsr1, :subscType, :gameSubsr1, :subscType, :gameSubsr1, :subscType, :gameSubsr1, :subscType
  json.url subscription_url(subscription, format: :json)
end
