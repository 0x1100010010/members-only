module PostsHelper

  def posts_form_if_signed_in
    render 'posts/form' if user_signed_in?
  end

end
