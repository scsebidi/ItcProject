json.array!(@items) do |item|
  json.extract! item, :id, :title, :description, :price, :image
  json.url item_url(item, format: :json)
end
