class PendingReturnPage
  include PageObject
  include DataMagic


  button(:continue, :value => "Continue")
  select_list(:type_of_return, :index => 0)
  text_field(:return_reason, :index => 0)

  def begin_refund

    self.type_of_return = "Refund"
    continue
    sleep(5)


  end



end