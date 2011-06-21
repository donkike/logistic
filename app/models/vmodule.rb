class Vmodule < ActiveRecord::Base
  has_many :users
  attr_accessible :vmodule_number, :vmodule_efficiency, :user_id
  
  def print
    puts "444"
  end
end
