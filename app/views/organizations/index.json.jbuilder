json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :code, :description, :billing_type, :start_date, :dead_date, :end_date, :git_url, :status
  json.url organization_url(organization, format: :json)
end
