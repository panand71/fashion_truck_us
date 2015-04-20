json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :email, :phone, :birthday, :loyalty_number, :favorite_trucks, :favorite_fashion, :boutique_id
  json.url customer_url(customer, format: :json)
end
