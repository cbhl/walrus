class Question < ActiveRecord::Base
  attr_accessible :data
  belongs_to :user
  has_many :answer
end
