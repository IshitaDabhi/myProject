json.array!(@clients) do |client|
  json.extract! client, :id, :ClientName, :country
  json.url client_url(client, format: :json)
end
