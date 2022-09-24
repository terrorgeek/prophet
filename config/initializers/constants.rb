module Constants
  EXPERT_AUTH_BASE_URL = 'https://developer.expert.ai/oauth2/token'
  EXPERT_BASE_URL = 'https://nlapi.expert.ai/v2'
  EXPERT_AI_USERNAME = 'terrorgeek@gmail.com'
  EXPERT_AI_PASSWORD = '$Syy13811897631'
  EXPERT_AI_APIKEY = 'd1b044e1-a1aa-4c67-a0f5-b74e91eb4be7'
  ENDPOINTS = {
    document_analysis: {
      sentiment: 'analyze/standard/en/sentiment',
      relation_extraction: 'analyze/standard/en/relations',
      named_entity_recognition: 'analyze/standard/en/entities',
      keyphrase_extraction: 'analyze/standard/en/relevants'
    },
    information_detection: {
      pii: 'detect/pii/en',
      writeprint: 'detect/writeprint/en',
      temporal_information: 'detect/temporal-information/en',
      esg_sentiment: 'detect/esg-sentiment/en',
      hate_speech: 'detect/hate-speech/en',
    },
    document_classification: {
      iptc: 'categorize/iptc/en',
      geotax: 'categorize/geotax/en',
      emotional_traits: 'categorize/emotional-traits/en',
      behavioral_traits: 'categorize/behavioral-traits/en',
    }
  }
end