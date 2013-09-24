When(/^I View My Commissions Info$/) do

  navigate_to(CommissionsPage, :using => :nav_to_commissions).view_specific_commission_period

end

When(/^I View My Rebates Info$/) do

  navigate_to(CommissionsPage, :using => :nav_to_commissions).view_rebates_info

end