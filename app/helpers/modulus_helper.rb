module ModulusHelper
  def modulus_information(&block)
    content_tag(:div, :class => "modulus", &block) 
  end

end
