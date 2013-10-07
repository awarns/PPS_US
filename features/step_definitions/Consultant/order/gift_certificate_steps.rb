When(/^I order a gift certificate$/) do

  navigate_to(ShopOnlinePage, :using => :consultant_retail_order).add_product_to_cart_1(:product_search => 'GIFT25')
  on(ProductInformationPage).add_product_to_cart
  sleep(5)
  on(ProductInformationPage).go_back_to_products
  navigate_all(:using => :retail_checkout)

end

Then(/^I should see my gift card in my manage gift certificates table$/) do

  on(VirtualOfficeHomePage).click_order
  on(OrderMainPage).click_gift_cert

end

When(/^I redeem a gift cert on an order$/) do

  navigate_all(:using => :redeem_gift_cert)


end