class Activity < ActiveRecord::Base
  belongs_to :main_activity
  belongs_to :machine
  has_many :averages
  attr_accessible :description, :time_activity
end
