require 'site_prism'
module Pages
    module SuperAdmin
        class AddOperator <SitePrism::Page

            element :operator_create_button, '[href="/super_admin/operators/new"] button'
            element :input_form, 'div.row div.ibox'
 
            element :state_dropdown, 'select[name="state_id"]'
            element :ampion_representative_dropdown, 'select[name="representative"]'

 
            element :company_name, '#companyName'
            element :address_1, '#Address1'
            element :address_2, '#Address2'
            element :city, '#city'

            element :zipcode, '#zipCode'
            element :url, '#proposedUrl'
            element :contact_first_name, '#contactFirstName'
            element :contact_last_name, '#contactLastName'
            element :contact_description, '#contactDescription'
            element :contact_phone_number, '#contactPhoneNumber'
            element :contact_email, '#contactEmail'
            element :customer_service_phone, '#customer_service_phone'
            element :customer_service_email_domain, '#customer_service_email_domain'
            element :customer_service_email_username, '#customer_service_email_username'
            element :smtp_login_username, '#smtp_login_username'
            element :smtp_password, '#smtp_password'
            element :user_email, '#userEmail'
            element :admin_first_name, '#adminFirstName'
            element :admin_last_name, 'input[name="adminLastName"]'
            element :community_solar_offering_web_address, '#webAddress'

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
            
            def initialize
                wait_until_operator_create_button_visible
            end
    
            def fill_operator_data(params)
                
                s=params[:seed]
                company_name.set("company_#{s}")
                address_1.set("address_1_#{s}")
                address_2.set("address_2_#{s}")
                city.set("city_#{s}")
                zipcode.set("02130")
                #Ask about this url setting.
                # url.set("url_#{s}")
                # binding.pry
                contact_first_name.set("first_name_#{s}")
                contact_last_name.set("last_name_#{s}")
                contact_description.set("description_#{s}")
                contact_phone_number.set("1112223333")
                contact_email.set("email_#{s}@company#{s}.com")
                customer_service_phone.set("s4445556666")
                customer_service_email_domain.set("email_domain#{s}.com")
                customer_service_email_username.set("user_#{s}")
                smtp_login_username.set("username_#{s}")
                smtp_password.set("smtp_pass_#{s}")
                user_email.set("useremail_#{s}@company#{s}.com")
                admin_first_name.set("admin_first_name_#{s}")
                admin_last_name.set("admin_last_name_#{s}")
                community_solar_offering_web_address.set("http://www.solaroffer#{s}.org")
                merchant_name.set("merchant_name_#{s}")
                vt_api_login.set("vt_api_login_#{s}")
                vt_secure_transaction_key.set("vt_secure_transaction_key_#{s}")
                console_api_access_id.set("console_api_access_id_#{s}")
                console_api_secure_key.set("console_api_secure_key_#{s}")
                rest_organization_id.set("id_#{s}")
                merchant_id.set("merchant_#{s}")
                per_transaction_ach_debit_limit.set("_#{s}")
                daily_volume_ach_debit_limit.set("_#{s}")
                monthly_volume_ach_debit_limit.set("_#{s}")
                per_transaction_ach_credit_limit.set("_#{s}")
                daily_volume_ach_credit_limit.set("_#{s}")
                monthly_volume_ach_credit_limit.set("_#{s}")
                per_transaction_ach_credit_card_debit_limit.set("_#{s}")
                daily_volume_ach_credit_card_debit_limit.set("_#{s}")
                monthly_volume_ach_credit_card_debit_limit.set("_#{s}")
                binding.pry
            end
        end
 
    end

end