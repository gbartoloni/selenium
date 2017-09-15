require 'rubygems'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'pry'
require 'pry-nav'

def user_login(email, password,user_type)
    @login_page = Pages::Login.new
    @login_page.load
    @login_page.wait_until_login_button_visible
    @login_page.login_as(email, password,user_type)
end

Capybara.register_driver :selenium do |app|
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.timeout =  30
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
end
Capybara.default_driver = :selenium
Capybara.current_session.driver.reset!
Capybara.reset_sessions!
Capybara.current_session.driver.browser.manage.window.resize_to(1000, 800)
