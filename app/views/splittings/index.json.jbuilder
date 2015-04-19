json.array!(@splittings) do |splitting|
  json.extract! splitting, :id
  json.url splitting_url(splitting, format: :json)
end
