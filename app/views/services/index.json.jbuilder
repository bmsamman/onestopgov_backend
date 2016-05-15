json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :fields, :category_id
  json.url service_url(service, format: :json)
end
