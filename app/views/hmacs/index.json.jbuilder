json.array!(@hmacs) do |hmac|
  json.extract! hmac, :id, :key, :secret, :hmac
  json.url hmac_url(hmac, format: :json)
end
