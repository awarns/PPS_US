class EnrollmentCommissionOptionsPage
  include PageObject
  include DataMagic

  link(:continue, :id => "MasterContentBody1_btn_save")
  text_field(:bank_name, :id => "MasterContentBody1_DirectDeposit1_txt_us_bank_name")
  text_field(:routing_number, :id => "MasterContentBody1_DirectDeposit1_txt_us_routing_number")
  text_field(:account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_us_account_number")
  text_field(:confirm_account_number, :id => "ctl00$MasterContentBody1$DirectDeposit1$txt_us_account_number_confirm")


  def fill_out_commission_options(data ={})

    populate_page_with data_for(:enrollment_commission_options, data)
    continue


  end






end