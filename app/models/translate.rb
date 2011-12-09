class Translate < ActiveRecord::Base
  attr_accessible :translate, :rating

  belongs_to :phrase
  belongs_to :translates_phrases, :foreign_key => "phrase_id",
                                  :dependent => :destroy
  has_one    :language


  validates :translate,  :presence   => true,
                         :length     => { :maximum => 200 },
                         :uniqueness => { :case_sensitive => false }
  validates :rating, :presence => true
end
