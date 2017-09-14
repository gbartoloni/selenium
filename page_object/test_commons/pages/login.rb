require 'site_prism'
module Pages
    class Login <SitePrism::Page
        set_url "https://portal.integration.ampion.net/users/sign_in#/"
        # set_url "http://localhost:3000/users/sign_in#/"
        element :login_button, 'input[type="submit"]'
        element :user_email_field, 'input#user_email'
        element :user_password_field, 'input#user_password'

        def login_as(email, password, user_type)
            user_email_field.set(email)
            user_password_field.set(password)
            login_button.click
        end
    end
end
