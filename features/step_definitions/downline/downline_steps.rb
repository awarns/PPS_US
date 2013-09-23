When(/^I run my downline report in "([^"]*)"$/) do |downline_type|

  navigate_to(DownlinePage, :using => :run_downline_report).run_downline(:downline_type => downline_type)


end

Then(/^I should see my List View downline report$/) do

  on(DownlineResultsReportPage).verify_list_view_results

end