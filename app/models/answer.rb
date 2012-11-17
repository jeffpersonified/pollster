class Answer < ActiveRecord::Base
  attr_accessible :question_id, :content, :author

  belongs_to :question
  delegate :poll, :to => :question
end
#
# class User < ActiveRecord::Base
#   attr_accessible :email
#
# end
#
# class Company < ActiveRecord::Base
#   belongs_to :owner
#
#   delegate :email, :to => :owner, :prefix => true, :allow_nil => true
# end
#
# company.email
# company.owner_email