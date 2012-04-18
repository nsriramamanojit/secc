module ApplicationHelper
  def per_page
    select_tag :per_page, options_for_select([5, 10, 20, 50, 100], @per_page.to_i), :onchange => "if(this.value){window.location='?per_page='+this.value+'&page=#{@page}'+'&query=#{@query}'}"
  end

  def link_for_edit(path)
    link_to image_tag('/images/icons/edit.png'), path, :title => 'Edit', :class => 'tipTip', :border => 0
  end

  def link_for_show(path)
    link_to image_tag('/images/icons/show.png'), path, :title => 'View', :class => 'tipTipTop', :border => 0
  end

  def link_for_show_pop(path)
    link_to image_tag('/images/icons/show.png'), path, :title => 'View', :class => 'tipTipTop', :rel => "facebox", :border => 0
  end

  def link_for_destroy(path)
    link_to image_tag('/images/icons/delete.png'), path, :confirm => 'Are you sure?', :method => :delete, :title => 'Delete', :class => 'tipTip'
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
    link_to content_tag(:span, "Back To List &rarr;".html_safe), path, :class => 'btn-yellow'
  end
  def created_by(created_by)
    User.where(:id => created_by).first.name
  end
  def link_to_active(model, path)
    content = ''
    content << link_to(model.report_status? ? image_tag('tick.gif') : image_tag('cros.gif'), path)
    content.html_safe
  end
  def associated_names(records)
    return 'No Records found' if records.blank?
    content = ''
    i = 1
    for record in records
      content << "#{i}. " + record.name + "<br/>"
      i += 1
    end
    content.html_safe
  end
  def enumeration_block_list(enumeration_blocks)
    return 'No EB found' if enumeration_blocks.blank?
    content = ''
    i = 1
    for eb in enumeration_blocks[0..15]
      content << "#{i}. " + eb.reference_number.to_s + "- " + eb.number_of_houses.to_s + "-" + eb.number_of_citizens.to_s + "<br/>"
      i += 1
    end
    content << 'and more' if enumeration_blocks.size > 16
    content.html_safe
  end
  def users_list(users)
    return 'No Users found' if users.blank?
    content = ''
    i = 1
    for user in users[0..15]
      content << "#{i}. " + user.login + "<br/>"
      i += 1
    end
    content << 'and more' if users.size > 16
    content.html_safe
  end

  def get_rb_name(id)
    content = " "
    rb = RevenueBlock.where(:id=>id).first
    content << rb.name + "(" + "%03d"%rb.reference_number.to_s + ")"
    content.html_safe
  end
  def get_district_name(id)
    content = " "
    rb = RevenueBlock.where(:id=>id).first
    content << rb.district.name + "(" + "%02d"%rb.district.reference_number.to_s + ")"
    content.html_safe
  end
  def link_to_active(model, path)
    content = ''
    content << "<div id='status_#{model.id}'>"
    content << link_to(model.status ? image_tag('tick.gif') : image_tag('cros.gif'), path, :remote=>true)
    content << "</div>"
    content.html_safe
  end
end
