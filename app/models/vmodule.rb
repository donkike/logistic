class Vmodule < ActiveRecord::Base
  has_many :users
  attr_accessible :vmodule_number, :vmodule_efficiency, :user_id
end
