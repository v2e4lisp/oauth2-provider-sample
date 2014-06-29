require 'rest-client'
require 'json'

client_id = 'd10db4214b5c7ac5f6f4a1d2fa557b4d9c404d93a94031daf5347a17227f3f4c'
client_secret = '808530cf8891101fb0218929cf9575c07941697fd9077ad6a0de680dc5eb8e95'
code = "644886988452da47c3560d11be149b68bdae3d0225456d3b21a484e26c7772c5"
redirect_uri = "urn:ietf:wg:oauth:2.0:oob"

response = RestClient.post 'http://localhost:3000/oauth/token', {
  # grant_type: 'client_credentials',
  grant_type: 'authorization_code',
  code: code,
  redirect_uri: redirect_uri,
  client_id: client_id,
  client_secret: client_secret
}

token = JSON.parse(response)

puts token
