class TranslatesLanguages < ActiveRecord::Base

  attr_accessible :language_id

  belongs_to :language
  belongs_to :translate

  validates :language_id,  :presence => true
  validates :translate_id, :presence => true

end
