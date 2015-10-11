json.array!(@customizing_names) do |customizing_name|
  json.extract! customizing_name, :id
  json.url customizing_name_url(customizing_name, format: :json)
end
