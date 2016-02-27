json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last, :photo_url, :sinch_id
  json.url user_url(user, format: :json)
end
