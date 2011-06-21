class User < ActiveRecord::Base

  acts_as_authentic do |c|
    c.logged_in_timeout = 10.minutes
  end
  
  belongs_to :vmodule
  has_many :averages
  belongs_to :activity

  attr_accessible :username, :email, :password, :password_confirmation, :vmodule_id, :user_efficiency, :age, :admin
  
  def compliance
    reports = ReportActivityUser.find(:all,:conditions => {:user_id => self.id})
    unless reports.nil?
      den =0
      num =0
      for report in reports do 
        den += report.activity.time_activity
        num += report.real_time
      end
      div = den / num
      return sprintf("%.2f", div)
    else
      return "NA"
    end
  end
end
