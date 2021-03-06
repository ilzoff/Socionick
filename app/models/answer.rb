# == Schema Information
# Schema version: 20101018223225
#
# Table name: answers
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  person_id  :integer
#  stype_id   :integer
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#

class Answer < ActiveRecord::Base
  
  belongs_to :user, :inverse_of => :answers
  belongs_to :person, :inverse_of => :answers
  belongs_to :stype, :inverse_of => :answers
  
  validates :stype_id, :presence => true
  
end
