# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_20_034531) do

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body"
    t.string "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.string "zipcode"
  end

  create_table "trained_messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "message_id"
    t.text "trained_response_json"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "document_analysis_sentiment_overall", comment: "Document Analysis API, Sentiment"
    t.float "document_analysis_sentiment_negativity", comment: "Document Analysis API, Sentiment"
    t.float "document_analysis_sentiment_positivity", comment: "Document Analysis API, Sentiment"
    t.text "document_analysis_sentiment_items", comment: "Document Analysis API, Sentiment"
    t.text "document_analysis_sentiment_knowledge", comment: "Document Analysis API, Sentiment"
    t.text "document_analysis_relation_extraction_knowledge", comment: "Document Analysis API, Relation Extraction"
    t.text "document_analysis_relation_extraction_tokens", comment: "Document Analysis API, Relation Extraction"
    t.text "document_analysis_relation_extraction_relations", comment: "Document Analysis API, Relation Extraction"
    t.text "document_analysis_named_entity_recognition_knowledge", comment: "Document Analysis API, Named entity recognition"
    t.text "document_analysis_named_entity_recognition_entities", comment: "Document Analysis API, Named entity recognition"
    t.text "document_analysis_keyphrase_extraction_main_phrases", comment: "Document Analysis API, Keyphrase extraction"
    t.text "document_analysis_keyphrase_extraction_main_lemmas", comment: "Document Analysis API, Keyphrase extraction"
    t.text "document_analysis_keyphrase_extraction_main_syncons", comment: "Document Analysis API, Keyphrase extraction"
    t.text "document_analysis_keyphrase_extraction_topics", comment: "Document Analysis API, Keyphrase extraction"
    t.text "document_analysis_keyphrase_extraction_knowledge", comment: "Document Analysis API, Keyphrase extraction"
    t.text "information_detection_pii_paragraphs", comment: "Information Detection API, PII"
    t.text "information_detection_pii_sentences", comment: "Information Detection API, PII"
    t.text "information_detection_pii_phrases", comment: "Information Detection API, PII"
    t.text "information_detection_pii_tokens", comment: "Information Detection API, PII"
    t.text "information_detection_pii_entities", comment: "Information Detection API, PII"
    t.text "information_detection_pii_knowledge", comment: "Information Detection API, PII"
    t.text "information_detection_pii_extractions", comment: "Information Detection API, PII"
    t.text "information_detection_pii_extra_data", comment: "Information Detection API, PII"
    t.text "information_detection_writeprint_paragraphs", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_sentences", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_phrases", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_tokens", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_entities", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_knowledge", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_extractions", comment: "Information Detection API, writeprint"
    t.text "information_detection_writeprint_extra_data", comment: "Information Detection API, writeprint"
    t.text "information_detection_temporal_information_paragraphs", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_sentences", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_phrases", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_tokens", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_entities", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_knowledge", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_extractions", comment: "Information Detection API, temporal_information"
    t.text "information_detection_temporal_information_extra_data", comment: "Information Detection API, temporal_information"
    t.text "information_detection_esg_sentiment_extractions", comment: "Information Detection API, esg-sentiment"
    t.text "information_detection_esg_sentiment_categories", comment: "Information Detection API, esg-sentiment"
    t.text "information_detection_hate_speech_extractions", comment: "Information Detection API, hate-speech"
    t.text "information_detection_hate_speech_categories", comment: "Information Detection API, hate-speech"
    t.text "document_classification_iptc_categories", comment: "Document Classification API, iptc"
    t.text "document_classification_geotax_categories", comment: "Document Classification API, geotax"
    t.text "document_classification_emotional_traits_categories", comment: "Document Classification API, emotional_traits"
    t.text "document_classification_behavioral_traits_categories", comment: "Document Classification API, behavioral_traits"
  end

end
