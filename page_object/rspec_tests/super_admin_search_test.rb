require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
require_relative('../test_commons/pages/superadmin/landing.rb')
require_relative('../test_commons/pages/operator/landing.rb')
describe 'Superadmin navigation' do
    before :all do
        user_login('sue@example.net', 'Mypassword123','superadmin')
        @superadmin_landing_page=Pages::SuperAdmin::Landing.new
    end

    it 'When superadmin login he sees search field' do
        expect(@superadmin_landing_page).to have_search_field
    end

    it 'Superadmin search for an operator and Impersonate it' do
        @superadmin_landing_page.search_field.set('Green Operat')
        expect(@superadmin_landing_page.operator_matching_dropdown.text).to eq('Green Operator')
        @superadmin_landing_page.operator_matching_dropdown.click
        @operator_landing_page=Pages::Operator::Landing.new
        expect(@operator_landing_page.operator_gauges.count).to be_eql(4)
    end
end
