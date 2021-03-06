class UserSession < Authlogic::Session::Base
  login_field :username
  password_field :password

  def to_key
    new_record? ? nil : [ self.send(self.class.primary_key) ]

  end
end
