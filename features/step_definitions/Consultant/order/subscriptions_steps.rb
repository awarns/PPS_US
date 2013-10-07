When(/^I cancel my subscriptions$/) do

  navigate_to(MySubscriptionsPage, :using => :nav_to_subscriptions).cancel_existing_subscriptions

end