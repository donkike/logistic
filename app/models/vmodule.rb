class Vmodule < ActiveRecord::Base
  has_many :users
  has_many :main_activity
  attr_accessible :vmodule_number, :vmodule_efficiency, :user_id
  
  def compliance
    total_users = self.users.count
    if total_users != 0
      total_compliance = 0
      for user in self.users do
        total_compliance += user.compliance.to_f
      end
      compliance = total_compliance/total_users
      return compliance
    else
      return 0
    end
  end
end
