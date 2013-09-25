Given(/^I am on the puppy adoption site$/) do
  visit HomePage
end

When(/^I attempt to checkout without an? (.+)$/) do |blank_field|
  navigate_to(CheckoutPage).checkout(blank_field => '')
end

When(/^I navigate to the checkout page$/) do
  navigate_to(CheckoutPage)
end

Then(/^I should see the following payment options:$/) do |table|
  table.hashes .each do |hsh|
    on(CheckoutPage).payment_options.should include hsh['pay_type']
  end
end

When(/^I complete the adoption of a puppy$/) do
  navigate_all
end


