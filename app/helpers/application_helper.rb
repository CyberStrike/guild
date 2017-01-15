module ApplicationHelper
  def dashboard_sign_up_link(current_user)
    return nav_link('Dashboard', dashboard_path) if current_user
    nav_link('Sign Up', new_user_session_path)
  end

  def nav_link(text, path)
    is_path = current_page?(path)
    options = is_path ? { class: 'nav-link active'} : {class: 'nav-link'}
    link_path = is_path ? '#' : path

    content_tag(:li, class: 'nav-item') do
      link_to text, link_path, options
    end
  end
end
