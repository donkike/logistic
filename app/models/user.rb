class User < ActiveRecord::Base

  belongs_to :vmodule
  has_many :averages
  acts_as_authentic
  attr_accessible :username, :email, :password, :password_confirmation, :vmodule_id
end
