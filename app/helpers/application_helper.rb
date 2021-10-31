module ApplicationHelper

  # Naura: fa helper generte fa tag with html options like size
  def font_awesome_tag(fa_element = 'fa-question-circle', size = '', color = '')
    "<i class='fas #{fa_element} #{size} #{color}'></i>".html_safe
  end
  
end
