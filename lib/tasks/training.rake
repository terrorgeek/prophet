namespace :training do
  desc "Training....."
  task start: :environment do

    auth_payload = JSON.generate({ username: Constants::EXPERT_AI_USERNAME, password: Constants::EXPERT_AI_PASSWORD })

    auth_res = RestClient.post(
      Constants::EXPERT_AUTH_BASE_URL, 
      auth_payload, {
        'Content-Type' => 'application/json; charset=utf-8', 
        'Authorization' => "Bearer #{Constants::EXPERT_AI_APIKEY}",
      })

    token = auth_res.body

    Message.all.each do |message|
      document = JSON.generate({ document: { text: message.body } })
      trained_message = message.build_trained_message
      base_train = BaseTrain.new
      Constants::ENDPOINTS.each do |k, v|
        v.keys.each do |sub_type|
          res = RestClient.post(
            "#{Constants::EXPERT_BASE_URL}/#{v[sub_type]}", 
            document, {
              'Content-Type' => 'application/json; charset=utf-8', 
              'Authorization' => "Bearer #{token}",
          })
          new_trained_message = base_train.assign(k, sub_type, JSON.parse(res.body))
          trained_message = TrainedMessage.new(base_train.not_nil_keys(trained_message).merge(base_train.not_nil_keys(new_trained_message)))
        end
      end
      trained_message.save!
    end
  end
end
