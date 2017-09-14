require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
require_relative('../test_commons/pages/superadmin/landing.rb')
describe 'Superadmin navigation' do
    before :all do
        @login_page = Pages::Login.new
        @login_page.load
    end
    it 'When superadmin login he sees search field' do
        @login_page.wait_until_login_button_visible
        @login_page.login_as('sue@example.net', 'Mypassword123','superadmin')
        @superadmin_landing_page=Pages::SuperAdmin::Landing.new
        expect(@superadmin_landing_page).to have_search_field

    end
end
