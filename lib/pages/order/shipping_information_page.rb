class ShippingInformationPage
  include PageObject
  include DataMagic

  text_field(:first_name, :id => "MasterContentBody1_ship_fname")
  text_field(:last_name, :id => "MasterContentBody1_ship_lname")
  text_field(:address, :id => "MasterContentBody1_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "MasterContentBody1_shipping_info_txtPostalCode")
  text_field(:email, :id => "MasterContentBody1_email")
  link(:save_and_continue, :id => "MasterContentBody1_btn_save")


  def enter_retail_shipping_info(data ={})

    populate_page_with data_for(:retail_shipping_info_page, data)
    save_and_continue


  end

  def click_save_and_continue

    sleep(2)
    save_and_continue

  end



end