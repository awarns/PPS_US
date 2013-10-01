When(/^I add an item to a business supply order$/) do

  navigate_all(:using => :consultant_business_supply_order)
  on(OrderDetailsPage).click_payments


end

When(/^Business Supply Checkout$/) do

  on(OrderDetailsPage).click_payments
  on(PaymentPage).checkout_with_credit_card
  on(SubmittingOrderPage).verify_submission

end