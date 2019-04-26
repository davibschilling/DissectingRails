module ApplicationHelper

    def login_options
        if current_user.is_a?(GuestUser)
            (link_to "Register", new_user_registration_path) +
            "<br>".html_safe +
            (link_to "Login", new_user_session_path)
        else
            link_to "Logout", destroy_user_session_path, method: :delete
        end
    end

    def source_helper(layout_name)
        if session[:source]
            greeting = "Obrigado por visitar o site pelo #{session[:source]} e você esta na #{layout_name}"
            content_tag(:p, greeting, class: "source-greeting")
        end
    end

end
