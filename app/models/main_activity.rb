class MainActivity < ActiveRecord::Base
  belongs_to :assigned_main_activity
  has_many :activities
  attr_accessible :description, :time_main_activity
end
