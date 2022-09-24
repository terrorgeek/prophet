class DocumentAnalysis < BaseTrain
  COLUMNS = [:document_analysis_sentiment_overall, :document_analysis_sentiment_negativity, :document_analysis_sentiment_positivity,
  :document_analysis_sentiment_items, :document_analysis_sentiment_knowledge, :document_analysis_relation_extraction_knowledge, 
  :document_analysis_relation_extraction_tokens, :document_analysis_relation_extraction_relations, :document_analysis_named_entity_recognition_knowledge,
  :document_analysis_named_entity_recognition_entities, :document_analysis_keyphrase_extraction_main_phrases,
  :document_analysis_keyphrase_extraction_main_lemmas, :document_analysis_keyphrase_extraction_main_syncons, 
  :document_analysis_keyphrase_extraction_topics, :document_analysis_keyphrase_extraction_knowledge]
  COLUMNS.each {|column| attr_accessor column }

  def persist!


  end
end