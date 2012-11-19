class Answer < ActiveRecord::Base
  attr_accessible :question_id, :content, :author

  validates :content, :presence => { :message => "An author is required" }

  belongs_to :question
  delegate :poll, :to => :question
end
