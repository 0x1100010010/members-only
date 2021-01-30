module PostsHelper
  def posts_form_if_signed_in
    render 'posts/form' if user_signed_in?
  end

  def posts_title_if(post)
    out = ''
    if user_signed_in?
      out << content_tag(:div) { "@#{post.user.username}" }
      out << content_tag(:div) { "Posted At: #{post.user.created_at}" }
    else
      out << 'Anonymus'
    end
    out.html_safe
  end

  def footer(post)
    out = ''
    if user_signed_in? && current_user.name == post.user.name
      out << content_tag(:a, method: :delete, href: post_path(post), data: { confirm: 'Are you sure?' }) do
        content_tag(:i, class: 'fas fa-trash') {}
      end
      out << content_tag(:a, href: edit_post_path(post)) { content_tag(:i, class: 'far fa-edit') {} }
      out << content_tag(:a, href: new_post_path) { content_tag(:i, class: 'fas fa-plus') {} }
      out << content_tag(:a, href: post_path(post)) { content_tag(:i, class: 'fas fa-link') {} }

    elsif user_signed_in?
      out << 'Comment Here'
    else
      out << "#{content_tag(:a, href: new_user_session_path) { 'Sign In' }} to comment!"
    end
    out.html_safe
  end

end
