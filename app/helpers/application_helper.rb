module ApplicationHelper

  def admin_area(&block)
    content_tag(:div, :class => "admin", &block) 
  end

  def user_nav
    unless current_user.nil?
      content_tag(:div, :id => "user_nav") do  
        content_tag(:span, (link_to current_user.username, vmodule_user_path(current_user.vmodule,current_user))) << 
        content_tag(:span," | ") <<
        content_tag(:a, (link_to :logout,logout_path))
      end   
    end
  end
end

