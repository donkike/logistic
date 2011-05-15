module VmodulesHelper
  def small_user_information user
    content_tag(:td,:class => 'user_information', :id => 'small') do
      content_tag(:div,(link_to user.username, vmodule_user_path(user.vmodule,user)))
    end
  end
end
