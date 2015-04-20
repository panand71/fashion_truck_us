json.array!(@boutiques) do |boutique|
  json.extract! boutique, :id, :name, :owner_id, :website, :twitter, :facebook, :instagram, :email, :city, :state, :schedule, :description, :category
  json.url boutique_url(boutique, format: :json)
end
