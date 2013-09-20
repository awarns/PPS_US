When(/^I setup a party order$/) do

  navigate_all(:using => :consultant_party_order)

end


When(/^Add a ship to host guest to my party$/) do


  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:ship_to_hostess => 'True')

end

When(/^Add a direct ship guest to my party$/) do

  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:guest_f_name => 'Mike', :guest_l_name => 'Ross')

end

When(/^Add products to my guests$/) do

  navigate_all(:using => :party_order_add_products)

end

Then(/^I verify my party order totals,Retail:"([^"]*)",Volume:"([^"]*)",Subtotal:"([^"]*)",ShipHand:"([^"]*)",Tax:"([^"]*)",Total:"([^"]*)"$/) do |retail, volume, subtotal, shiphand, tax, total|

  on(OrderDetailsPage).order_summary_text.should include retail,volume,subtotal,shiphand,tax,total

end

When(/^I add a hostess credit item to my order$/) do

  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Hostess Credit")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I verify the Party Hostess Totals Hostess Plan Base Amt "([^"]*)" Hostess Half Price "([^"]*)" Hostess Credit "([^"]*)" Exclusive Hostess Offer "([^"]*)" Hostess Overage "([^"]*)"$/) do |hbase, hhalf, hcredit, hoffer,hover|

  on(OrderDetailsPage).order_summary_text.should include hbase, hhalf, hcredit, hoffer, hover

end

When(/^I add an exclusive hostess offer price item to my order$/) do

  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Exclusive Hostess Offer", :item_code => "4094")
  on(OrderDetailsPage).party_personalize_item_with_none

end

When(/^I add a hostess half price item to my order$/) do



  on(OrderDetailsPage).add_item_to_party_order(:customer_list => "Hostess Half Price", :item_code => "3000")
  on(OrderDetailsPage).party_personalize_item_with_none

end