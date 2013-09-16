When(/^I Add product "([^"]*)" to my cart$/) do |product|

  on(ShopOnlinePage).add_product_to_cart_1(:product_search => product)
  on(ProductInformationPage).add_product_to_cart

end

When(/^I personalize using Embroidery$/) do

  on(PersonalizationPage).personalize_with_embroidery
  on(ProductInformationPage).go_back_to_products

end

When(/^I personalize using Icon-It No Text$/) do

  on(PersonalizationPage).personalize_with_icon_it_no_text
  on(ProductInformationPage).go_back_to_products

end

When(/^I setup a retail order$/) do

  navigate_to(ShopOnlinePage, :using => :consultant_retail_order)

end

When(/^I continue my order$/) do

  navigate_all(:using => :continue_unsubmitted_order)

end

Then(/^I verify Order Totals, Product: "([^"]*)", Tax: "([^"]*)", Shipping : "([^"]*)", Total: "([^"]*)"$/) do |product, tax, shipping, total|

  navigate_all(:using => :retail_quick_checkout)
  @current_page.text.should include product, tax, shipping, total

end

When(/^I Remove Item "([^"]*)" from my cart$/) do |index|

  on(YourInvoicePage).click_view_cart_on_invoice
  on(ProductsInYourCartPage).remove_product index

end