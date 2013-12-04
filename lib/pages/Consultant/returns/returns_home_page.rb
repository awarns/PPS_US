class ReturnsHomePage
  include PageObject


  link(:click_here, :text => "Click Here")


  def create_pending_return

    click_here

  end


end