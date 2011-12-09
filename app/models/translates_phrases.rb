class TranslatesPhrases < ActiveRecord::Base

  attr_accessible :translate_id

  belongs_to :phrase
  belongs_to :translate

  validates :phrase_id,    :presence => true
  validates :translate_id, :presence => true

end
