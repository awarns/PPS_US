class ProductsInYourCartPage
  include PageObject


  link(:back_to_products, :id => "MasterContentBody1_content_rep_HyperLink1")
  link(:checkout_link, :id => "MasterContentBody1_content_rep_lnk_checkout")
  link(:personalize, :text => "Personalize")
  link(:update, :text => "Update")
  link(:remove, :text => "Remove", :index => index)

  def click_checkout

    checkout_link

  end

  def remove_product(index)



  end




end