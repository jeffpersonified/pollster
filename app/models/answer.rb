class Answer < ActiveRecord::Base
  attr_accessible :question_id, :content, :author

  validates :content, :presence => { :message => "is required for submission" }

  belongs_to :question
  delegate :poll, :to => :question
end
