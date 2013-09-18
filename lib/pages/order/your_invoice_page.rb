class YourInvoicePage
  include PageObject
  include DataMagic

  link(:change_shipping_info, :text => "Change Shipping Information")
  link(:back_to_products, :id => "MasterContentBody1_content_rep_HyperLink1")
  link(:view_cart, :text => "View Cart")
  table(:table_totals, :id => "MasterContentBody1_content_rep_DataGrid1")
  button(:pay_for_order_button, :value => "Pay For Order")


  page_url "#{FigNewton.base_url}/forms/frm_temp_invoice.aspx"

  def verify_totals(product, tax, shipping, total)

    table_totals.should == product
    table_totals.should == tax
    table_totals.should == shipping
    table_totals.should == total

  end

  def click_view_cart_on_invoice

    view_cart

  end

  def click_back_to_products

    back_to_products

  end

  def click_change_shipping_info

    change_shipping_info

  end

  def pay_for_order

    pay_for_order_button

  end



end