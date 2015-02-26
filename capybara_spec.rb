require 'rubygems'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'

require 'site_prism'
require 'require_all'
require 'ruby-progressbar'
require 'nokogiri'
require 'active_support/core_ext'

#require_relative "../spec_helpers/spec_helper"


describe "capybara native on Stackoverflow" do
    before :each do
        Capybara.register_driver :selenium do |app|
            client = Selenium::WebDriver::Remote::Http::Default.new
            client.timeout =  30
            Capybara::Selenium::Driver.new(app, :browser => :chrome, :http_client => client)
        end
        Capybara.default_driver = :selenium
        Capybara.current_session.driver.reset!
        Capybara.reset_sessions!
        Capybara.current_session.driver.browser.manage.window.resize_to(500, 200)
        Capybara.visit("http://stackoverflow.com/")
    end

    it "Shows Newst items in questions" do
        Capybara.click_link('nav-questions')
        expect(Capybara.page).to have_content('newest')
    end
    it "Returns correct search items" do
        Capybara.fill_in 'search', with: 'Windows'
        Capybara.find('input').native.send_keys(:return)
        expect(Capybara.page).to have_content('Windows')
    end
    it "sign up a new user" do
        Capybara.click_link('sign up')
        Capybara.find("form[id='search']").visible?
        Capybara.fill_in 'display-name', with: 'bob fosse'
        Capybara.fill_in 'email', with: 'bfosse.hotmail.com'
        Capybara.fill_in 'password', with: 'PAssw0rd'
        Capybara.fill_in 'password2', with: 'PAssw0rd'
    end
end
