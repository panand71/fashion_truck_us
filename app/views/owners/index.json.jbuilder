json.array!(@owners) do |owner|
  json.extract! owner, :id, :name, :email, :username, :string, :phone
  json.url owner_url(owner, format: :json)
end
