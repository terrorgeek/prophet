class AddColumnsToTranedMessageForTrainedResults < ActiveRecord::Migration[5.2]
  def change
    # Document Analysis API:
    add_column :trained_messages, :document_analysis_sentiment_overall, :float, comment: 'Document Analysis API, Sentiment'
    add_column :trained_messages, :document_analysis_sentiment_negativity, :float, comment: 'Document Analysis API, Sentiment'
    add_column :trained_messages, :document_analysis_sentiment_positivity, :float, comment: 'Document Analysis API, Sentiment'
    add_column :trained_messages, :document_analysis_sentiment_items, :text, comment: 'Document Analysis API, Sentiment'
    add_column :trained_messages, :document_analysis_sentiment_knowledge, :text, comment: 'Document Analysis API, Sentiment'

    add_column :trained_messages, :document_analysis_relation_extraction_knowledge, :text, comment: 'Document Analysis API, Relation Extraction'
    add_column :trained_messages, :document_analysis_relation_extraction_tokens, :text, comment: 'Document Analysis API, Relation Extraction'
    add_column :trained_messages, :document_analysis_relation_extraction_relations, :text, comment: 'Document Analysis API, Relation Extraction'
 
    add_column :trained_messages, :document_analysis_named_entity_recognition_knowledge, :text, comment: 'Document Analysis API, Named entity recognition'
    add_column :trained_messages, :document_analysis_named_entity_recognition_entities, :text, comment: 'Document Analysis API, Named entity recognition'

    add_column :trained_messages, :document_analysis_keyphrase_extraction_main_phrases, :text, comment: 'Document Analysis API, Keyphrase extraction'
    add_column :trained_messages, :document_analysis_keyphrase_extraction_main_lemmas, :text, comment: 'Document Analysis API, Keyphrase extraction'
    add_column :trained_messages, :document_analysis_keyphrase_extraction_main_syncons, :text, comment: 'Document Analysis API, Keyphrase extraction'
    add_column :trained_messages, :document_analysis_keyphrase_extraction_topics, :text, comment: 'Document Analysis API, Keyphrase extraction'
    add_column :trained_messages, :document_analysis_keyphrase_extraction_knowledge, :text, comment: 'Document Analysis API, Keyphrase extraction'

    
    # Information Detection API
    add_column :trained_messages, :information_detection_pii_paragraphs, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_sentences, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_phrases, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_tokens, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_entities, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_knowledge, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_extractions, :text, comment: 'Information Detection API, PII'
    add_column :trained_messages, :information_detection_pii_extra_data, :text, comment: 'Information Detection API, PII'

    add_column :trained_messages, :information_detection_writeprint_paragraphs, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_sentences, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_phrases, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_tokens, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_entities, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_knowledge, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_extractions, :text, comment: 'Information Detection API, writeprint'
    add_column :trained_messages, :information_detection_writeprint_extra_data, :text, comment: 'Information Detection API, writeprint'

    add_column :trained_messages, :information_detection_temporal_information_paragraphs, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_sentences, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_phrases, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_tokens, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_entities, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_knowledge, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_extractions, :text, comment: 'Information Detection API, temporal_information'
    add_column :trained_messages, :information_detection_temporal_information_extra_data, :text, comment: 'Information Detection API, temporal_information'

    add_column :trained_messages, :information_detection_esg_sentiment_extractions, :text, comment: 'Information Detection API, esg-sentiment'
    add_column :trained_messages, :information_detection_esg_sentiment_categories, :text, comment: 'Information Detection API, esg-sentiment'

    add_column :trained_messages, :information_detection_hate_speech_extractions, :text, comment: 'Information Detection API, hate-speech'
    add_column :trained_messages, :information_detection_hate_speech_categories, :text, comment: 'Information Detection API, hate-speech'


    # Document Classification API
    add_column :trained_messages, :document_classification_iptc_categories, :text, comment: 'Document Classification API, iptc'
    add_column :trained_messages, :document_classification_geotax_categories, :text, comment: 'Document Classification API, geotax'
    add_column :trained_messages, :document_classification_emotional_traits_categories, :text, comment: 'Document Classification API, emotional_traits'
    add_column :trained_messages, :document_classification_behavioral_traits_categories, :text, comment: 'Document Classification API, behavioral_traits'
    

  end
end
