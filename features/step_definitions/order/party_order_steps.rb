When(/^I setup a party order$/) do

  navigate_all(:using => :consultant_party_order)

end


When(/^Add a ship to host guest to my party$/) do


  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:ship_to_hostess => 'True')

end

When(/^Add a direct ship guest to my party$/) do

  navigate_to(GuestInformationPage, :using => :party_order_add_guest).add_guest(:guest_f_name => 'Mike', :guest_l_name => 'Ross')

end

When(/^Add products for my ship to host guest$/) do


  navigate_all(:using => :party_order_add_products)

end