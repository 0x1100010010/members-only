module ApplicationHelper

  def notification
    if flash[:notice]
      content_tag(:div, class: 'alert-success alert-dismissible fade show', role: "alert") { 
        notice
      }
    elsif flash[:alert]
      content_tag(:div, class: 'alert-warning alert-dismissible fade show', role: "alert") { 
        alert
      }
    end
  end
  
end
