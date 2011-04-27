class Average < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id, :activity_id, :value
end
