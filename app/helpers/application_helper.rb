module ApplicationHelper
  def link_for_edit(path)
    link_to image_tag('/images/icons/edit.png'), path, :title =>'Edit', :class=>'tipTip',:border=>0
  end

  def link_for_show(path)
    link_to image_tag('/images/icons/show.png'), path, :title =>'View', :class=>'tipTipTop' ,:border=>0
  end

  def link_for_destroy(path)
    link_to image_tag('/images/icons/delete.png'), path, :confirm => 'Are you sure?', :method => :delete, :title =>'Delete', :class=>'tipTip'
  end

end
