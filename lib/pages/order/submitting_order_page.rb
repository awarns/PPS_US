class SubmittingOrderPage
  include PageObject


  div(:submit_message, :id => "div_submit_out")
  link(:order_history, :text => "Order Hist.")
  table(:order_history_table, :id => "MasterContentBody1_content_rep_data_orders")



  def verify_submission

    count = 1

    while count < 4

      while submit_message !~ /.*Thank You.*/

        sleep(3)
        count = count + 1

        if submit_message =~ /.*Thank You.*/

          count = 5

        end

      end

    end


    submit_message.should =~ /.*Thank You.*/
    @ordernumber = @browser.div(:id, "div_submit_out").text
    @ordernumber = @ordernumber.split (/# */)
    @ordernumber = @ordernumber[1].split /[T_]/
    @ordernumber = @ordernumber[0]
    @ordernumber = @ordernumber.split (/[h_]/)
    @ordernumber = @ordernumber[0]


    order_history

    sleep(5)

    order_history_table.should =~ /.*#{@ordernumber}.*/



  end


end