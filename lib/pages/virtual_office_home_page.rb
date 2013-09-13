class VirtualOfficeHomePage
  include PageObject

  link(:profile, :text => "Profile")


  def click_profile

    profile

  end


end