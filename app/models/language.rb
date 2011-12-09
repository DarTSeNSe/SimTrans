class Language < ActiveRecord::Base
  attr_accessible :language

  belongs_to :translate
  belongs_to :translates_languages, :dependent => :destroy

  validates :language,  :presence   => true,

end
