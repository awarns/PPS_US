$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'fig_newton'
require 'data_magic'


require_all 'lib'


World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
    :default => [],
    :nav_through_profile => [
      [LoginPage, :login],
      [VirtualOfficeHomePage, :click_profile],
      [AddressInfoPage, :click_additional_info],
      [AdditionalInfoPage, :click_commission_options],
      [CommissionOptionsPage, :click_my_website_info],
      [MyWebsiteInfoPage, :click_upload_photo]
    ],
    :nav_through_incentives => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_incentives],
        [IncentivesHomePage, :click_startswell]

    ]


}



PageObject::PageFactory.route_data = {
    :nav_through_profile => :default,
}