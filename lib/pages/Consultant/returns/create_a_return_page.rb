class CreateAReturnPage
  include PageObject


  button(:continue, :value => "Continue")
  button(:lookup, :value => "Lookup")
  text_field(:order_number, :id => "orderno")

  def create_a_return(order_number)

    self.order_number = order_number
    lookup
    sleep(2)
    continue

  end

  def nothing



  end


end