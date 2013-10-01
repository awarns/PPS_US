class MySubscriptionsPage
  include PageObject

  button(:yes_cancel, :value => "Yes")
  link(:edit_sub, :text => "Edit")
  link(:cancel_sub, :text => "Cancel")
  link(:last_sub, :text => "Last")
  link(:next_sub, :text => "Next")
  link(:sub_1, :text => "Annual Website Subscription (Yearly)")

  def cancel_existing_subscriptions

    while page_text =~ /.*First Name.*/

      cancel_sub
      sleep(2)

    end

  end



end