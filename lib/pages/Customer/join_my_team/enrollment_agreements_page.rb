class EnrollmentAgreementsPage
  include PageObject

  checkbox(:chk_1, :id => "MasterContentBody1_content_rep_repeat_agreements_chkAgree_0")
  checkbox(:chk_2, :id => "MasterContentBody1_content_rep_repeat_agreements_chkAgree_2")
  checkbox(:chk_3, :id => "MasterContentBody1_content_rep_repeat_agreements_chkAgree_3")
  checkbox(:chk_4, :id => "MasterContentBody1_content_rep_repeat_agreements_chkAgree_4")
  link(:doc_1, :id => "MasterContentBody1_content_rep_repeat_agreements_lnkDownload_0")
  link(:doc_2, :id => "MasterContentBody1_content_rep_repeat_agreements_lnkDownload_1")
  link(:doc_3, :id => "MasterContentBody1_content_rep_repeat_agreements_lnkDownload_2")
  link(:doc_4, :id => "MasterContentBody1_content_rep_repeat_agreements_lnkDownload_3")
  link(:doc_5, :id => "MasterContentBody1_content_rep_repeat_agreements_lnkDownload_4")
  link(:continue, :id => "MasterContentBody1_content_rep_btn_agree")

  def agree_to_documents


    check_chk_1
    check_chk_2
    check_chk_3
    check_chk_4
    doc_1
    doc_2
    doc_3
    doc_4
    doc_5

    attach_to_window(:url => 'enrollment')



    sleep(2)
    continue


  end


end