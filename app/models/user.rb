class User < ActiveRecord::Base
  attr_accessible :name, :phone
  has_many :contact
  has_many :question
  has_many :answer
end
