class Phrase < ActiveRecord::Base
  attr_accessible :phrase, :tag

  has_many :translates, :dependent => :destroy
  has_many :translates_phrases, :class_name => "TranslatesPhrases",
                                :foreign_key => "translate_id",
                                :dependent => :destroy

  belongs_to :user

  validates :phrase,  :presence   => true,
                      :length     => { :maximum => 140 },
                      :uniqueness => { :case_sensitive => false }
  validates :user_id, :presence => true

end
