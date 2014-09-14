json.array!(@lists) do |list|
  json.extract! list, :id, :Name, :position
  json.url list_url(list, format: :json)
end
