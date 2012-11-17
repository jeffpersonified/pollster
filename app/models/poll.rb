class Poll < ActiveRecord::Base
  attr_accessible :author, :title, :questions_attributes
  
  has_many :questions, :dependent => :destroy

  accepts_nested_attributes_for :questions, :reject_if => lambda { |q| q[:title].blank? }, :allow_destroy => true
end
