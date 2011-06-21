module UsersHelper
  def user_information user
      content_tag(:div, :class => "user_information") do
          content_tag(:div, image_tag('avatar.jpg')) <<
          content_tag(:p, "Name: #{user.username}") <<
          content_tag(:p, "Age: #{user.age}") <<
          content_tag(:p, "Current compliance: #{user.user_efficiency}") <<      
          content_tag(:p, "email: #{user.email}") 
      end
  end

end
