module HomeHelper
  
  def header_nav_items
    if user_signed_in?
      render 'shared/header_helper/signed_in'
    else
      render 'shared/header_helper/signed_out'
    end
  end

  

end