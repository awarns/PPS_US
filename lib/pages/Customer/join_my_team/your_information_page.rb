class YourInformationPage
  include PageObject
  include DataMagic


  link(:continue, :id => "MasterContentBody1_btnContinue")
  link(:copy_shipping_info, :id => "MasterContentBody1_lnkCopyShipping")
  text_field(:enroll_f_name, :id => "MasterContentBody1_txt_first")
  text_field(:enroll_l_name, :id => "MasterContentBody1_txt_last")
  text_field(:enroll_dob, :id => "ctl00_MasterContentBody1_DateOfBirth_dateInput")
  text_field(:enroll_ssn, :id => "ctl00$MasterContentBody1$txt_ssn")
  text_field(:enroll_password, :id => "MasterContentBody1_txt_pass")
  text_field(:enroll_confirm_password, :id => "MasterContentBody1_txt_pass_conf")
  text_field(:enroll_shipping_street, :id => "MasterContentBody1_shipping_info_1_txt_street_1")
  text_field(:enroll_shipping_zip, :id => "MasterContentBody1_shipping_info_1_txtPostalCode")
  text_field(:enroll_email, :id => "MasterContentBody1_txt_email")
  text_field(:enroll_confirm_email, :id => "MasterContentBody1_txt_email_conf")
  text_field(:enroll_name_on_card, :id => "MasterContentBody1_txt_name_on_card")
  text_field(:enroll_card_number, :id => "MasterContentBody1_txt_cardno")
  text_field(:enroll_exp_date, :id => "MasterContentBody1_txt_expdate")
  text_field(:enroll_card_security_code, :id => "MasterContentBody1_txt_cardcode")


  def enter_enrollment_info(data ={})

    populate_page_with data_for(:enrollment_info_part_1, data)
    sleep(5)
    copy_shipping_info
    sleep(5)
    populate_page_with data_for(:enrollment_info_part_2, data)
    copy_shipping_info
    continue



  end




end