class IncentivesHomePage
  include PageObject
  include DataMagic

  link(:startswell, :id => "MasterContentBody1_lnkstartswell")
  link(:believe_and_achieve, :id => "MasterContentBody1_lnkBelieveAchieve")
  link(:summer_dream_rewards, :id => "MasterContentBody1_lnkdreamRewards")
  link(:incentive_tracker, :id => "Incentive Tracker Report")
  link(:national_conf_bucks, :id => "MasterContentBody1_lnkNatConfBucks")

  def click_startswell

    startswell

  end

  def click_believe_and_achieve

    believe_and_achieve

  end

  def click_summer_dream_rewards

    summer_dream_rewards

  end

  def click_incentive_tracker

    incentive_tracker

  end

  def click_national_conference_bucks

    national_conf_bucks

  end



end