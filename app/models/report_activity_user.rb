class ReportActivityUser < ActiveRecord::Base
  attr_accessible :user_id, :activity_id, :real_time
end
