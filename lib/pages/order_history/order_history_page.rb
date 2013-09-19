class OrderHistoryPage
  include PageObject
  include DataMagic





  def verify_order_in_table

     order_history_table.should =~ /.*#{@ordernumber}.*/



  end


end