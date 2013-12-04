class ReturnedProductsPage
  include PageObject


  button(:save_return, :value => "Save Return")
  select_list(:card_to_credit, :id => "MasterContentBody1_content_rep_ddl_cc_info")

  def select_card

    self.card_to_credit = "Andy Warns Last 4: 1111 Exp: 1215"
    save_return

  end


end