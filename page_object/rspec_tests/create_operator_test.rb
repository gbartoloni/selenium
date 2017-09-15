require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
require_relative('../test_commons/pages/superadmin/landing.rb')
require_relative('../test_commons/pages/superadmin/add_operator.rb')

describe 'Superdamin suite' do
    before :all do
        user_login('sue@example.net', 'Mypassword123','superadmin')
        @superadmin_landing_page=Pages::SuperAdmin::Landing.new
    end
    it 'Superadmin Creates New Operator' do
        @superadmin_landing_page.operators_list_link.click
        @superadmin_operators_page=Pages::SuperAdmin::AddOperator.new
        @superadmin_operators_page.operator_create_button.click
        @superadmin_operators_page.wait_until_input_form_visible
        @operator_data=@superadmin_operators_page.fill_operator_data(seed: 1234)
    end
end