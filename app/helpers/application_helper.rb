module ApplicationHelper
  def per_page
    select_tag :per_page, options_for_select([5, 10, 20, 50, 100], @per_page.to_i), :onchange => "if(this.value){window.location='?per_page='+this.value+'&page=#{@page}'+'&query=#{@query}'}"
  end

  def link_for_edit(path)
    link_to image_tag('/images/icons/edit.png'), path, :title =>'Edit', :class=>'tipTip', :border=>0
  end

  def link_for_show(path)
    link_to image_tag('/images/icons/show.png'), path, :title =>'View', :class=>'tipTipTop', :border=>0
  end

  def link_for_show_pop(path)
    link_to image_tag('/images/icons/show.png'), path, :title =>'View', :class=>'tipTipTop', :rel=>"facebox", :border=>0
  end

  def link_for_destroy(path)
    link_to image_tag('/images/icons/delete.png'), path, :confirm => 'Are you sure?', :method => :delete, :title =>'Delete', :class=>'tipTip'
  end

  def tab_heading(heading)
    content = ""
    content << "<a href='#'>"
    content << "<div class='menu-l'>&nbsp;</div><div class='menu-c'><span>&nbsp;&nbsp;#{heading}&nbsp;&nbsp;&nbsp;</span></div>"
    content << "<div class='menu-r'>&nbsp;</div></a>"
    content.html_safe
  end

  def sub_heading(main, sub)
    "<h3>#{main}<span>&nbsp;|&nbsp;#{sub}</span></h3>".html_safe
  end

  def link_to_all(path)
    link_to content_tag(:span, "Back To List &rarr;".html_safe), path, :class=>'btn-gray'
  end

def created_by(created_by)
  User.where(:id=>created_by).first.name
end
end
