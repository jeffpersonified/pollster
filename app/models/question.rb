class Question < ActiveRecord::Base
  attr_accessible :title

  belongs_to :poll
  has_many :answers
end
