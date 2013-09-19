class OrderDetailsPage
  include PageObject
  include DataMagic

  text_field(:item_code, :id => "Itemcode")
  text_field(:quantity, :id => "QuantityList")
  button(:add_lookup, :value => "Add/Lookup")
  select_list(:customer_list, :id => "CustomerList")
  link(:add_guest_link, :id => "lnk_add_guest")


  def click_add_guest

    add_guest_link

  end


  def add_item_to_party_order(data ={})

    populate_page_with data_for(:add_party_item, data)

  end


end