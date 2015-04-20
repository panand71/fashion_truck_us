json.array!(@build_trucks) do |build_truck|
  json.extract! build_truck, :id, :project_name, :owner_id, :size, :flooring, :walls, :lighting, :configuration, :shelves, :rods, :outside_color
  json.url build_truck_url(build_truck, format: :json)
end
