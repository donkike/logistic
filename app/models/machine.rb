class Machine < ActiveRecord::Base
  has_one :activity
  attr_accessible :description, :name, :activity_id
end
