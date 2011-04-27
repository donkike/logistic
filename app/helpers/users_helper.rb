module UsersHelper
  def user_information user
    content_tag(:td, :class => "user_information" ) do
      content_tag(:p, "Nombre: #{user.username}") << 
      content_tag(:p, "Correo electronico: #{user.email}")
   end
  end

end
