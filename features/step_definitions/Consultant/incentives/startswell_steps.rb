When(/^I View My Startswell Gen Zero Info$/) do

  navigate_to(StartswellPage, :using => :nav_through_incentives).view_generation_0


end

Then(/^I verify my Gen Zero results$/) do

  on(StartswellPage).verify_gen_0_results

end

When(/^I click the startswell TOT link$/) do

  navigate_to(StartswellPage, :using => :nav_through_incentives).click_visit_startswell

end

Then(/^I should be taken to US TOT$/) do


end