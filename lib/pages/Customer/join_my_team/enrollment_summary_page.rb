class EnrollmentSummaryPage
  include PageObject


  link(:edit_my_information, :id => "MasterContentBody1_content_rep_lnkChange")
  link(:finalize_enrollment, :id => "MasterContentBody1_content_rep_lnk_continue")
  link(:cancel_enrollment, :id => "MasterContentBody1_content_rep_lnkCancel")

  def finalize_enrollment_setup

    finalize_enrollment

  end



end