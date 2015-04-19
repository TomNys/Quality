json.array!(@dom0s) do |dom0|
  json.extract! dom0, :id
  json.url dom0_url(dom0, format: :json)
end
