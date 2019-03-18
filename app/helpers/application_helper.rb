module ApplicationHelper
  def test_helper
    "<p>TEST HELPER</p>".html_safe
  end

  def auth_bar_helper
    if current_user.is_a? User
      "<p>Hello, #{current_user.last_name}  </p> ".html_safe +
      (link_to "Logout", destroy_user_session_path, method: :delete)
    else
      (link_to "Login", new_user_session_path) +
      "<br>".html_safe +
      (link_to "Register", new_user_registration_path)
    end
  end
end
