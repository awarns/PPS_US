class DownlinePage
  include PageObject
  include DataMagic

  select_list(:downline_type, :id => "MasterContentBody1_content_rep_ddl_type")
  link(:run_downline_report, :id => "MasterContentBody1_content_rep_btnRunDownline")
  checkbox(:ohio, :id => "MasterContentBody1_content_rep_chk_states_US_42")
  text_field(:save_filter_as, :id => "MasterContentBody1_content_rep_txt_filter_name")


  def run_downline(data ={})

    populate_page_with data_for(:downline_page, data)
    run_downline_report


  end



end