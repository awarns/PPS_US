When(/^I edit a consultants profile$/) do

  visit EmployeeCsrManagerPage
  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).edit_profile_as_csr
  on(EmployeeCsrEditConsultantPage).csr_edit_consultant


end

When(/^I view a consultants website$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).click_view_website

end

When(/^I send an email as a CSR$/) do

  visit EmployeeCsrManagerPage
  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_send_email
  on(CsrEmailPage).csr_send_email_to_consultant

end

When(/^I view a consultants subscription history$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).view_subscription_history

end

When(/^I view a consultants commission details$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).view_commission_details

end

When(/^I view a consultants personal volume via orders$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_view_orders

end

When(/^I view a consultants accounts info$/) do

  visit EmployeeCsrManagerPage

  on(EmployeeCsrManagerPage).search_csr_manager
  on(EmployeeCsrManagerPage).csr_view_accounts

end