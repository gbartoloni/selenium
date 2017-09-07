require_relative('../test_commons/helpers/rspec_helpers.rb')
require_relative('../test_commons/pages/login.rb')
describe 'Main Page navigation' do
    before :all do
        @home = Pages::Login.new
        @home.load
        @home.has_about_us_link
    end
    it 'When user select About us it shows about us page' do

    end
end
