namespace :training do
  desc "Training....."
  task start: :environment do
    payload = '{ "username": "terrorgeek@gmail.com", "password": "$Syy13811897631" }'

    res = RestClient.post(
      Constants::EXPERT_AUTH_BASE_URL, 
      payload, {
         content_type: :json, 
         "Accept"=>"*/*",
        'Authorization' => "Bearer #{Constants::EXPERT_AI_APIKEY}",
        "Accept-Encoding"=>"gzip, deflate",
        'Host' => 'www.postman-echo.com',
        'Content-Length' => payload.size
      })

      token = 'eyJraWQiOiI1RDVOdFM1UHJBajVlSlVOK1RraXVEZE15WWVMMFJQZ3RaUDJGTlhESHpzPSIsImFsZyI6IlJTMjU2In0.eyJjdXN0b206Y291bnRyeSI6IlVTIiwic3ViIjoiNjQ4MTUyZDAtZGE2Mi00YWFkLTk1MzAtODkyMTU5YzJlYjNjIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImlzcyI6Imh0dHBzOlwvXC9jb2duaXRvLWlkcC5ldS13ZXN0LTEuYW1hem9uYXdzLmNvbVwvZXUtd2VzdC0xX0FVSGdRMDhDQiIsInBob25lX251bWJlcl92ZXJpZmllZCI6ZmFsc2UsImNvZ25pdG86dXNlcm5hbWUiOiI2NDgxNTJkMC1kYTYyLTRhYWQtOTUzMC04OTIxNTljMmViM2MiLCJjdXN0b206Y29tcGFueSI6IlNlcmEiLCJhdWQiOiIxZWdzNjNxOTlwM3NlYmVjaHNiNzI5dDgwbyIsImV2ZW50X2lkIjoiMWM1ZGU5OGEtZTU4Ny00ZDU4LWEzNjktYjVjM2U0YmUwNjQzIiwidG9rZW5fdXNlIjoiaWQiLCJhdXRoX3RpbWUiOjE2NjM4MTgxMjAsIm5hbWUiOiJZdSIsImN1c3RvbTpqb2JUaXRsZSI6IlNyIFNFIiwicGhvbmVfbnVtYmVyIjoiKzEyMDIzMDQ0NTc2IiwiZXhwIjoxNjYzOTA0NTIwLCJpYXQiOjE2NjM4MTgxMjAsImZhbWlseV9uYW1lIjoiU29uZyIsImVtYWlsIjoidGVycm9yZ2Vla0BnbWFpbC5jb20iLCJjdXN0b206bWFya2V0aW5nQXV0aCI6IjAifQ.KJEUEpUKW2RhMklZvYZrJSCzRc7rq1KykUnB_XvF3oFHT0ZhzxqjwkqwKbXilUYFJdT5Td0O2SfgNTDJ_Zh7C7a7cfp4-LNx4p5OH0A_0H7jg5yRbraiom3pRAvJoLy_1lN8hrTUsrCMSCgpMyWanqxrdLqkaJNSIxelVXrMBzPVz59nvOdNP5mPcP61JmrEl-SMqzcpfT2E2nAFrV-JbjQRkk5WVQCEVlixlVmOIWmvFSH-zk-qtY8yBSFRp9J-f93lMVuEAFK4u4SWmPpiub8JWnfq7hktPWz5X1_1S8knE_GOE5_Oex5BKlguK9fW56DR227dGonXhBzBI3tRxw'
      document = {document: {text: 'I love people in Tokyo, they are honest and kind hearted, but people in BeiJing is terrible, the people there are all damn cheaters.'}}
      res = RestClient.post(
      "#{Constants::EXPERT_BASE_URL}/categorize/geotax/en", 
      document.to_json, {
         'Content-Type' => 'application/json; charset=utf-8', 
         "Accept"=>"*/*",
        'Authorization' => "Bearer #{token}",
        "Accept-Encoding"=>"gzip, deflate",
        'Host' => 'www.postman-echo.com',
        'Content-Length' => payload.size
      })


      request = Typhoeus::Request.new(
        "#{Constants::EXPERT_BASE_URL}/categorize/geotax/en", 
        method: :post,
        body: document.to_json,
        params: { },
        headers: {
          'Content-Type' => 'application/json; charset=utf-8', 
          "Accept"=>"*/*",
         'Authorization' => "Bearer #{token}",
         "Accept-Encoding"=>"gzip, deflate",
         'Host' => 'www.postman-echo.com',
         'Content-Length' => document.to_json.size
       }
      )


      Excon.post("#{Constants::EXPERT_BASE_URL}/categorize/geotax/en",
  :body => document.to_json,
  headers: {
          'Content-Type' => 'application/json; charset=utf-8', 
          "Accept"=>"*/*",
         'Authorization' => "Bearer #{token}",
         "Accept-Encoding"=>"gzip, deflate",
         'Host' => 'www.postman-echo.com',
         'Content-Length' => document.to_json.size
       }
  end
end
