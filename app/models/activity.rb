class Activity < ActiveRecord::Base
  belongs_to :main_activity
  belongs_to :machine
  has_many :averages
  has_many :report_activity_users
  attr_accessible :description, :time_activity, :name
end
