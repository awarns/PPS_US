class AccountBalancePage
  include PageObject


  text_field(:start_date, :id => "ctl00_MasterContentBody1_StartDate_dateInput")
  text_field(:end_date, :id => "ctl00_MasterContentBody1_EndDate_dateInput")
  text_field(:order_number, :id => "MasterContentBody1_ordno")
  button(:go_button, :value => "Go")
  table(:acct_balance_table, :id => "ctl00_MasterContentBody1_data_transactions_ctl00")





end