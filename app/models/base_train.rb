class BaseTrain

  MAPPINGS = {
    document_analysis: {
        sentiment: [:overall, :negativity, :positivity], 
        relation_extraction: [:knowledge, :tokens, :relations],
        named_entity_recognition: [:knowledge, :entities],
        keyphrase_extraction: [:main_phrases, :main_lemmas, :main_syncons, :topics, :knowledge]  
      },
    information_detection: {
      pii:                  [:paragraphs, :sentences, :phrases, :tokens, :entities, :knowledge, :extractions, :extra_data],
      writeprint:           [:paragraphs, :sentences, :phrases, :tokens, :entities, :knowledge, :extractions, :extra_data],
      temporal_information: [:paragraphs, :sentences, :phrases, :tokens, :entities, :knowledge, :extractions, :extra_data],
      esg_sentiment: [:extractions, :categories],
      hate_speech:   [:extractions, :categories],
    },
    document_classification: {
      iptc: [:categories],
      geotax: [:categories],
      emotional_traits: [:categories],
      behavioral_traits: [:categories]
    }
  }

  def initialize
  end

  def assign(type, sub_type, json_response)
    trained_message = TrainedMessage.new
    if type == :document_analysis and sub_type == :sentiment
      MAPPINGS[type][sub_type].each do |item|
        trained_message.send("#{type}_#{sub_type}_#{item}=", json_response['data'][sub_type.to_s][item.to_s.camelize.tap { |s| s[0] = s[0].downcase }])
      end
    else
      MAPPINGS[type][sub_type].each do |item|
        trained_message.send("#{type}_#{sub_type}_#{item}=", json_response['data'][item.to_s.camelize.tap { |s| s[0] = s[0].downcase }])
      end
    end
    
    trained_message
  end

  def not_nil_keys(trained_message)
    trained_message.attributes.select {|k, v| v.present? }
  end
end