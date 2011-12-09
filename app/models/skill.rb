class Skill < ActiveRecord::Base

  attr_accessible :skill

  belongs_to :users_languages

  validates :skill, :presence => true

end
