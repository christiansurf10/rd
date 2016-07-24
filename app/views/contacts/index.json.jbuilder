json.array!(@contacts) do |contact|
  json.extract! contact, :id, :nome, :email, :idade, :estado, :cargo
  json.url contact_url(contact, format: :json)
end
