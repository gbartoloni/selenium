require 'site_prism'
module Pages
    module Superadmin
        class AddOperator <SitePrism::Pages
            element :input_form, 'div.row div.ibox'
            element :company_name, '#companyName'
            element :address_1, '#Address1'
            element :address_2, '#Address2'
            element :city, '#city'
            element :state_dropdown, 'select[name="state_id"]'

            element :zipcode, '#zipCode'
            element :url, 'url'
            element :contact_first_name, 'contactFirstName'
            element :contact_last_name, 'contactLastName'
            element :contact_description, 'contactDescription'
            element :contact_phone_number, 'contactPhoneNumber'
            element :contact_email, 'contactEmail'
            element :customer_service_phone, 'customer_service_phone'
            element :customer_service_email_domain, 'customer_service_email_domain'
            element :customer_service_email_username, 'customer_service_email_username'
            element :smtp_login_username, 'smtp_login_username'
            element :smtp_password, 'smtp_password'
            element :user_email, 'userEmail'
            element :admin_first_name, 'adminFirstName'
            element :admin_last_name, 'input[name="adminLastName"]'
            element :community_solar_offering_web_address, '#webAddress'
            element :ampion_representative, 'select[name="representative"]'
            element :merchant_name, '#name'
            element :vt_api_login, '#swp_api_id'
            element :vt_secure_transaction_key, '#swp_secret_key'
            element :console_api_access_id, '#rest_api_id'
            element :console_api_secure_key, '#rest_secret_key'
            element :rest_organization_id, '#organization_id'
            element :merchant_id, '#location_id'
            element :per_transaction_ach_debit_limit, '#per_transaction_ach_debit_limit'
            element :daily_volume_ach_debit_limit, '#daily_volume_ach_debit_limit'
            element :monthly_volume_ach_debit_limit, '#monthly_volume_ach_debit_limit'
            element :per_transaction_ach_credit_limit, '#per_transaction_ach_credit_limit'
            element :daily_volume_ach_credit_limit, '#daily_volume_ach_credit_limit'
            element :monthly_volume_ach_credit_limit, '#monthly_volume_ach_credit_limit'
            element :per_transaction_ach_credit_card_debit_limit, '#per_transaction_ach_credit_card_debit_limit'
            element :daily_volume_ach_credit_card_debit_limit, '#daily_volume_ach_credit_card_debit_limit'
            element :monthly_volume_ach_credit_card_debit_limit, '#monthly_volume_ach_credit_card_debit_limit'

        end
        def fill_in(seed)
            binding.pry
        end
    end

end