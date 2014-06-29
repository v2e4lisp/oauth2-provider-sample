require 'rest_client'

token = "706966033ff748fca470b4a13fff8110db528f5e0646f5fb52850b2c7b5803f8"

result = RestClient.get 'http://localhost:3000/api/v1/profiles/2.json', { 'Authorization' => "Bearer #{token}" }
puts result

result = RestClient.get 'http://localhost:3000/api/v1/profiles.json', { 'Authorization' => "Bearer #{token}" }
puts result
