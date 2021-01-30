module HomeHelper
  def header_nav_items
    if user_signed_in?
      render 'shared/header_helper/signed_in'
    else
      render 'shared/header_helper/signed_out'
    end
  end

  def show_profile_stats
    content_tag(:div, class: 'col-3') { render 'shared/temp/profile' } if user_signed_in?
  end

  def show_trends
    content_tag(:div, class: 'col-3') { render 'shared/temp/trends' } if user_signed_in?
  end
end
