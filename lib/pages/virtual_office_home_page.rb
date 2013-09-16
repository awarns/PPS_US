class VirtualOfficeHomePage
  include PageObject

  link(:profile, :text => "Profile")
  link(:incentives, :text => "Incentives")

  def click_profile

    profile

  end

  def click_incentives

    incentives

  end


end