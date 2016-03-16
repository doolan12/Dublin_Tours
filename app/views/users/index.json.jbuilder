json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :address, :mobile, :rate_per_hour
  json.url user_url(user, format: :json)
end
