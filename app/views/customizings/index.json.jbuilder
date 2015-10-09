json.array!(@customizings) do |customizing|
  json.extract! customizing, :id
  json.url customizing_url(customizing, format: :json)
end
