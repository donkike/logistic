class ReportActivityUser < ActiveRecord::Base
  belongs_to :activity
  belongs_to :user
  attr_accessible :user_id, :activity_id, :real_time
end
