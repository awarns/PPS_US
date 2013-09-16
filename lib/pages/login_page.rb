class LoginPage
  include PageObject
  include DataMagic

  page_url FigNewton.base_url

  text_field(:consultantID, :id => "txt_username")
  text_field(:password, :id => "txt_password")
  link(:click_login, :id => "MasterContentBody1_btnLogin")
  link(:consultant_login, :text => "Consultant Login")


  def nav_to_virtual_office

    consultant_login

  end

  def login(data = {})
    populate_page_with data_for(:login_page, data)
    click_login
  end

  def error_visible



  end


end