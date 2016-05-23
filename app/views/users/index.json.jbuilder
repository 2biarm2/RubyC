json.array!(@users) do |user|
  json.extract! user, :id, :nome, :senha, :registro
  json.url user_url(user, format: :json)
end
