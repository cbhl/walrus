class Contact < ActiveRecord::Base
  attr_accessible :callable, :name, :phone
  has_many :answer
  belongs_to :user
end
