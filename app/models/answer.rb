class Answer < ActiveRecord::Base
  attr_accessible :data, :utccalltime
  belongs_to :user, :contact, :question
end
