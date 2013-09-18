class PaymentPage
  include PageObject
  include DataMagic


  DEFAULT_DATA = {
      'card_number' => '4111111111111111',
      'card_exp_date' => '1215',
      'amount' => '0.00'

  }


  link(:cc_payment, :text => "+ Credit Card Payment")
  link(:gc_payment, :text => "+ Gift Certificate Payment")
  text_field(:card_number, :id => "MasterContentBody1_content_rep_txt_cno")
  text_field(:card_exp_date, :id => "MasterContentBody1_content_rep_txt_cdate")
  text_field(:amount, :id => "MasterContentBody1_content_rep_txt_camount")
  button(:save_payment, :value => "Save Payment")
  button(:submit_order, :value => "Submit Order to Home Office")


  def checkout_with_credit_card(data = {})
      data = DEFAULT_DATA.merge(data)
    sleep(5)
    @balance = @browser.table(:class, "normal").text
    arr = @balance.split /[\$_]/
    @balance = arr[3]
    puts @balance

    cc_payment
    self.card_number = data['card_number']
    self.card_exp_date = data['card_exp_date']
    data['amount'] = @balance
    self.amount = data['amount']


    save_payment
    sleep(2)
    submit_order




  end


end