When(/^I view My Summer Dream Rewards Incentive$/) do

  navigate_to(IncentivesHomePage, :using => :nav_through_incentives).click_summer_dream_rewards

end

When(/^I view my Summer Dream Rewards Gen Zero$/) do

  on(SummerDreamRewardsPage).view_generation_0

end

Then(/^I should see my Summer Dream Rewards Gen Zero$/) do

  on(SummerDreamRewardsPage).verify_gen_0_summer_dream

end