class User < ActiveRecord::Base

  acts_as_authentic do |c|
    c.logged_in_timeout = 10.minutes
  end
  
  belongs_to :vmodule
  has_many :averages

  attr_accessible :username, :email, :password, :password_confirmation, :vmodule_id, :user_efficiency, :age, :admin
end
