class Answer < ActiveRecord::Base
  attr_accessible :data, :utccalltime
  belongs_to :user
  belongs_to :contact
  belongs_to :question
end
