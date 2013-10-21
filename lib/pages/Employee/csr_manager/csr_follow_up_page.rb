class CsrFollowUpPage
  include PageObject
  include DataMagic
  include FigNewton

  page_url "#{FigNewton.base_url}/employee/admin/frm_followup_entry.aspx"

  button(:save_follow_up, :value => "Save New Follow-Up")
  checkbox(:chk_1, :id => "ContentPlaceHolder1_chk_follow_options_0")
  checkbox(:chk_2, :id => "ContentPlaceHolder1_chk_follow_options_1")
  checkbox(:chk_3, :id => "ContentPlaceHolder1_chk_follow_options_2")
  text_field(:contact_of_consultant, :id => "ContentPlaceHolder1_customer_info_txt_idnumber")
  text_field(:f_name, :id => "ContentPlaceHolder1_customer_info_txt_first_name")
  text_field(:l_name, :id => "ContentPlaceHolder1_customer_info_txt_last_name")
  text_field(:address_line_1, :id => "ContentPlaceHolder1_customer_info_shipping_info_txt_street_1")
  text_field(:zip_code, :id => "ContentPlaceHolder1_customer_info_shipping_info_txtPostalCode")
  text_field(:email, :id => "ContentPlaceHolder1_customer_info_txt_email")



end