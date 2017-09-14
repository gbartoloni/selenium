require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
describe 'Main Page navigation' do
    before :all do
        @home = Pages::Landing.new
        @home.load
    end
    it 'When user select About us it shows about us page' do
        @home.wait_until_company_dropdown_visible
        @about_us_page = @home.company_dropdown.click
        binding.pry
    end
end
