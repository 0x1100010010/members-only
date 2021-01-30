module ApplicationHelper
  def notification
    if flash[:notice]
      content_tag(:div, class: 'alert-success alert-dismissible fade show', role: 'alert') do
        notice
      end
    elsif flash[:alert]
      content_tag(:div, class: 'alert-warning alert-dismissible fade show', role: 'alert') do
        alert
      end
    end
  end

  def signed_in_only!
    redirect_to new_user_session_path unless signed_in?
  end
end
