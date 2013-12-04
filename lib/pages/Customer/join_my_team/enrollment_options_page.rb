class EnrollmentOptionsPage
  include PageObject

  link(:us_enroll_kit, :id => "ctl00_ctl00_MasterContentBody1_content_rep_data_options_ctl00_ctl10_lnkSelect")
  button(:ok_pop_up) { |page| page.div_element(:class => /.*RadWindow.*/).button_element(:index => 0)}


  def click_us_enroll_kit

    us_enroll_kit
    sleep(2)
    ok_pop_up

  end




end