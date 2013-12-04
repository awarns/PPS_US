When(/^I mark an order as shipped so it can be returned$/) do

  navigate_to(OrderHistoryPage, :using => :nav_to_order_history)

  @order_number = @browser.table(:id => "MasterContentBody1_content_rep_data_orders")[3][0].text

  visit EmployeeLoginPage

  on(EmployeeLoginPage).employee_login

  visit OrderStatusPage

  on(OrderStatusPage).enter_order_number @order_number
  on(OrderStatusPage).change_order_status

end

When(/^I Return the Item as a Refund$/) do

  visit LoginPage

  navigate_to(CreateAReturnPage, :using => :process_return).create_a_return @order_number
  continue_navigation_to(ReturnedProductsPage, :using => :process_return).select_card

  sleep(5)

  @current_page.text.should include("Return Complete")

  @return_code = @browser.div(:class => "uic-main").text
  @return_code = @return_code.split (/# */)
  @return_code = @return_code[1].split (/. */)
  @return_code = @return_code[0]


end