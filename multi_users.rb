require 'site_prism'
require 'require_all'
require 'ruby-progressbar'
require 'nokogiri'
require 'active_support/core_ext'

require_relative "../spec_helpers/spec_helper"
user_1 = Capybara::Session.new(:selenium) # or whatever driver
user_1.driver.browser.manage.window.resize_to(1000, 400)
user_2 = Capybara::Session.new(:selenium)
user_2.driver.browser.manage.window.resize_to(1000, 400)
user_1.visit 'http://stackoverflow.com/'
user_2.visit 'http://stackoverflow.com/'

user_1.click_link('nav-questions')
user_2.click_link('sign up')
sleep 5

user_1.driver.reset!

user_2.driver.reset!
