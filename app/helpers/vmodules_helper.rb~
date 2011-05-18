module VmodulesHelper

  def main_information vmodule
    content_tag(:div, :class => 'main_information') do
      content_tag(:strong, (t(:vmodule_efficiency))) <<
      content_tag(:strong, (vmodule.vmodule_efficiency))
    end
  end
  def small_user_information user
    content_tag(:td,:class => 'small_information', :id => 'small_user') do
      content_tag(:div,(link_to user.username, vmodule_user_path(user.vmodule,user)))
    end
  end

  def small_module_information vmodule
     content_tag(:td,:class => 'small_information', :id => 'small') do
      content_tag(:div,(link_to vmodule.vmodule_number, vmodule_path(vmodule)))
    end 
  end
end
