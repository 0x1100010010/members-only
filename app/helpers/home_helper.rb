module HomeHelper
  
  def header_nav_items
    if user_signed_in?
      render 'shared/_header/signed_in'
    else
      render 'shared/_header/signed_out'
    end
  end

end