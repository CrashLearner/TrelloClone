json.array!(@productify_lists) do |productify_list|
  json.extract! productify_list, :id, :title, :description
  json.url productify_list_url(productify_list, format: :json)
end
