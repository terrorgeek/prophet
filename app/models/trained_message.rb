class TrainedMessage < ApplicationRecord
  searchkick
  
  belongs_to :message
end
