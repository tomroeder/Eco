json.array!(@freigabe_statuses) do |freigabe_status|
  json.extract! freigabe_status, :id
  json.url freigabe_status_url(freigabe_status, format: :json)
end
