When(/^I Create a Party Event$/) do

  navigate_to(EventInvitationsPage, :using => :create_party_event)

end

When(/^I enter invitation information$/) do

  navigate_to(EventInvitationsPage, :using => :nav_through_event).enter_invitation_details

end

When(/^I add a guest to a party$/) do

  navigate_to(EventGuestListPage,:using => :nav_through_event).add_guest_to_event

end

When(/^I edit a guest invited to a party$/) do

  navigate_to(EventGuestListPage, :using => :nav_through_event).edit_guest

end

Then(/^I should see a Yes RSVP$/) do

  on(EventGuestListPage).check_rsvp

end

When(/^I preview an invite$/) do

  navigate_to(EventGuestListPage, :using => :nav_through_event).preview_invitations
  on(RsvpPage).rsvp_to_party

end