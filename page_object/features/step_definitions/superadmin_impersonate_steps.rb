require_relative('../../test_commons/helpers/rspec_helpers.rb')
require_relative('../../test_commons/pages/login.rb')
require_relative('../../test_commons/pages/superadmin/landing.rb')
require_relative('../../test_commons/pages/operator/landing.rb')
Given(/^I log in as Superadmin$/) do
    user_login('sue@example.net', 'Mypassword123','superadmin')
    @superadmin_landing_page=Pages::SuperAdmin::Landing.new
end
  
And(/^I Search for 'Green Operat'$/) do
    expect(@superadmin_landing_page).to have_search_field
    @superadmin_landing_page.search_field.set('Green Operat')
end

Then(/^the quick search result shows 'Green Operator'$/) do
    expect(@superadmin_landing_page.operator_matching_dropdown.text).to eq('Green Operator')
end

And(/^I click on quick search result$/) do
    @superadmin_landing_page.operator_matching_dropdown.click
    @operator_landing_page=Pages::Operator::Landing.new
end

Then(/^I will see the operator page$/) do
    expect(@operator_landing_page.operator_gauges.count).to be_eql(4)
end