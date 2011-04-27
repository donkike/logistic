class AssignedMainActivity < ActiveRecord::Base
  has_one :main_activity
  attr_accessible :main_activity_id, :garment_number

end
