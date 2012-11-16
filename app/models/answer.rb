class Answer < ActiveRecord::Base
  attr_accessible :content, :author

  belongs_to :question
end
