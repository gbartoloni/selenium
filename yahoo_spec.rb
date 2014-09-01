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
class FindCarsSection < SitePrism::Page
    element :movie_section, "i#nav-movie"
end


describe "capybara native on yahoo search" do
    before :each do
        Capybara.register_driver :selenium do |app|
            client = Selenium::WebDriver::Remote::Http::Default.new
            client.timeout =  30
            Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => client)
        end
        Capybara.default_driver = :selenium
        Capybara.current_session.driver.reset!
        Capybara.reset_sessions!
        Capybara.current_session.driver.browser.manage.window.resize_to(500, 200)
        Capybara.visit("https://yahoo.com")
    end

    it "MOvie Search With Harrison Ford Returns Indiana Jones" do
        Capybara.has_css?('i#nav-movie')
        Capybara.find('i#nav-movie').click  
        expect(Capybara.page).to have_content('Yahoo Movies')    
        Capybara.find('input#UHSearchBox').set('Harrison Ford')
        Capybara.find('input#UHSearchProperty').click
        expect(Capybara.page).to have_content('Indiana Jones')
    end
end
