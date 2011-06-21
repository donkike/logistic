class Vmodule < ActiveRecord::Base
  has_many :users
  has_many :main_activity
  attr_accessible :vmodule_number, :vmodule_efficiency, :user_id
  
end
