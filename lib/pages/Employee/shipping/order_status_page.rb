class OrderStatusPage
  include PageObject



  page_url "#{FigNewton.base_url}/employee/admin/frm_order_status.aspx"


  button(:change_status, :value => "Change Status")
  button(:save_button, :value => "Save")
  link(:check_printed, :id => "lnk_chk_printed")
  link(:check_shipped, :id => "lnk_chk_shipped")
  text_field(:order_number, :id => "txt_ordno")

  def enter_order_number(order_number)

    self.order_number = order_number
    change_status

  end

  def change_order_status

    check_printed
    sleep(2)
    check_shipped
    sleep(2)
    save_button
    sleep(4)

  end


end