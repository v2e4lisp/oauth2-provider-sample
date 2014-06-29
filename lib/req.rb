require 'rest_client'

token = "bcd0d1b268123c8a0049df415fdb318399ac8070257001aea015c3d03c2e8873"
result = RestClient.get 'http://localhost:3000/api/v1/profiles/2.json', { 'Authorization' => "Bearer #{token}" }

puts result
