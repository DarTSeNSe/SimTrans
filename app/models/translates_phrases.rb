class TranslatesPhrases < ActiveRecord::Base

  attr_accessible :translate_id

  belongs_to :phrase
  belongs_to :translate

end
