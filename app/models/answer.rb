class Answer < ActiveRecord::Base
  attr_accessible :question_id, :content, :author

  belongs_to :question
  delegate :poll, :to => :question
end
