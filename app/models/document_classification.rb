class DocumentClassification < BaseTrain
  COLUMNS = [:document_classification_iptc_categories, :document_classification_geotax_categories, 
:document_classification_emotional_traits_categories, :document_classification_behavioral_traits_categories]
  COLUMNS.each {|column| attr_accessor column }

  def persist!

  end
end