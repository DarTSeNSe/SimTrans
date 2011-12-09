class Language < ActiveRecord::Base

  attr_accessible :language

  belongs_to :users_languages
  belongs_to :phrase
  belongs_to :translate

  validates :language,  :presence   => true,

end
