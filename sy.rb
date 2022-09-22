
module Constants
  EXPERT_AUTH_BASE_URL = 'https://developer.expert.ai/oauth2/token'
  EXPERT_BASE_URL = 'https://nlapi.expert.ai/v2'
  EXPERT_AI_USERNAME = 'terrorgeek@gmail.com'
  EXPERT_AI_PASSWORD = '$Syy13811897631'
  EXPERT_AI_APIKEY = 'd1b044e1-a1aa-4c67-a0f5-b74e91eb4be7'
end

require 'excon'
require 'json'
token = 'eyJraWQiOiI1RDVOdFM1UHJBajVlSlVOK1RraXVEZE15WWVMMFJQZ3RaUDJGTlhESHpzPSIsImFsZyI6IlJTMjU2In0.eyJjdXN0b206Y291bnRyeSI6IlVTIiwic3ViIjoiNjQ4MTUyZDAtZGE2Mi00YWFkLTk1MzAtODkyMTU5YzJlYjNjIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5ldS13ZXN0LTEuYW1hem9uYXdzLmNvbVwvZXUtd2VzdC0xX0FVSGdRMDhDQiIsInBob25lX251bWJlcl92ZXJpZmllZCI6ZmFsc2UsImNvZ25pdG86dXNlcm5hbWUiOiI2NDgxNTJkMC1kYTYyLTRhYWQtOTUzMC04OTIxNTljMmViM2MiLCJjdXN0b206Y29tcGFueSI6IlNlcmEiLCJhdWQiOiIxZWdzNjNxOTlwM3NlYmVjaHNiNzI5dDgwbyIsImV2ZW50X2lkIjoiZDM4NTEwN2UtODExNy00Yjk5LWI2ODItMDViM2MzZDExY2ZmIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2NjM4MTk0MTcsIm5hbWUiOiJZdSIsImN1c3RvbTpqb2JUaXRsZSI6IlNyIFNFIiwicGhvbmVfbnVtYmVyIjoiKzEyMDIzMDQ0NTc2IiwiZXhwIjoxNjYzOTA1ODE3LCJpYXQiOjE2NjM4MTk0MTcsImZhbWlseV9uYW1lIjoiU29uZyIsImVtYWlsIjoidGVycm9yZ2Vla0BnbWFpbC5jb20iLCJjdXN0b206bWFya2V0aW5nQXV0aCI6IjAifQ.WvVz53zCQ3s3Jqq8ccHoGC_KLni7QKSqWOFEtwx-9dG-Amy76nDicdl8KW-RexxMfksVwqJWsdzErq3bCaTuKJzTOJVy_Y-xLYX8rcO_lBrXL9EfP9Ks3-XJTYyRyTd5q3QxCBLh2agNZ8fDvw3wCZpJWs2INLohUmQfu4MlrigUcNkdM3lm_uO7UEK0Bod2IQdMRP05tye__lZdbJHzFzHy1fJ6YpqhiW7g-0HvLRucjUFNkezToE6on347qkBZZ9KT3hsOGDKjEkA8pDto_iaol3gyIe0qWiwoUgEkonQ7yHpLa_7yV4i_7-oq-Z1DuTjo_51o3D0amPE7WdK-eQ'
document = {document: {text: 'I love people in Tokyo, they are honest and kind hearted, but people in BeiJing is terrible, the people there are all damn cheaters.'}}
      

a = Excon.post("#{Constants::EXPERT_BASE_URL}/categorize/geotax/en",
  :body => JSON.generate(document),
  headers: {
          'Content-Type' => 'application/json; charset=utf-8', 
         'Authorization' => "Bearer #{token}",
       })
puts a.status
puts a.body