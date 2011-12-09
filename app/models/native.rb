class Native < ActiveRecord::Base

  attr_accessible :nativelang

  belongs_to :user

  validates :nativelang, :presence => true

end
