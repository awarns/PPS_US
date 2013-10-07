class ManageGiftCertificatesPage
  include PageObject
  include DataMagic



  button(:go, :value => "Go")
  select_list(:status, :id => "MasterContentBody1_content_rep_ddl_gc_status")
  select_list(:lookup_by, :id => "MasterContentBody1_content_rep_ddl_lookupby")



  def validate_gift_cert_in_table(data ={})

    populate_page_with data_for(:gift_cert_status, data)
    go
    sleep(3)
    gift_cert_table_element[1][3].should == "$25.00"

  end

  def get_cert_number

    @params = gift_cert_table_element[1][0].text
    puts @params

  end



end