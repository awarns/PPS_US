class SubmittingOrderPage
  include PageObject


  div(:submit_message, :id => "div_submit_out")


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



  end


end