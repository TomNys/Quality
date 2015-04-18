json.array!(@csrfattacks) do |csrfattack|
  json.extract! csrfattack, :id, :string, :integer
  json.url csrfattack_url(csrfattack, format: :json)
end
