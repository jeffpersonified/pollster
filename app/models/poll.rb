class Poll < ActiveRecord::Base
  attr_accessible :author, :title, :created_at, :questions_attributes

  validates :title, :uniqueness => true, :presence => { :message => "A poll name is required" }
  validates :author, :presence => { :message => "An author is required" }

  has_many :questions, :dependent => :destroy

  accepts_nested_attributes_for :questions, :reject_if => lambda { |q| q[:title].blank? }, :allow_destroy => true
end
