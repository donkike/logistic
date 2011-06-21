module VmodulesHelper

  def main_information vmodule
    content_tag(:div, :class => 'main_information') do
      content_tag(:strong, (t(:vmodule_efficiency))) <<
      content_tag(:strong, (vmodule.vmodule_efficiency))
    end
  end

  def small_user_information user
    if user.user_efficiency < 0.9
      content_tag(:td,:class => 'small_information', :id => "small_user-red") do
        content_tag(:span,(link_to user.username, vmodule_user_path(user.vmodule,user))) <<
          content_tag(:div,(link_to image_tag('rojo.jpg'), vmodule_user_path(user.vmodule,user))) 
      end 
    else
      content_tag(:td,:class => 'small_information', :id => "small_user-green") do
        content_tag(:span, (link_to user.username, vmodule_user_path(user.vmodule,user))) <<
          content_tag(:div,(link_to image_tag('verde.jpg'), vmodule_user_path(user.vmodule,user))) 
      end
    end
  end

  def small_module_information vmodule
    if vmodule.vmodule_efficiency < 0.9
       content_tag(:td,:class => 'small_information', :id => "small-red") do
        content_tag(:span,(link_to vmodule.vmodule_number, vmodule_path(vmodule),:id => "numberdb")) <<
        content_tag(:div,(link_to image_tag('rojo.jpg'), vmodule_path(vmodule))) 
      end 
    else
      content_tag(:td,:class => 'small_information', :id => "small-green") do
        content_tag(:span, (link_to vmodule.vmodule_number, vmodule_path(vmodule), :id => "numberdb")) <<
        content_tag(:div,(link_to image_tag('verde.jpg'), vmodule_path(vmodule))) 
      end
    end
  end
end
