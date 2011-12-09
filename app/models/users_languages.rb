class UsersLanguages < ActiveRecord::Base

  attr_accessible :skill_id, :language_id, :user_id

  belongs_to :user
  has_many :languages
  has_many :skills

end
