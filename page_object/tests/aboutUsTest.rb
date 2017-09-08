require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
describe 'Main Page navigation' do
    before :all do
        @home = Pages::Login.new
        @home.load
    end
    it 'When user select About us it shows about us page' do
        @home.wait_until_about_us_link_visible
        @about_us_page = @home.about_us_link.click
    end
end
