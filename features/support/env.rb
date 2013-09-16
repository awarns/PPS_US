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
        [IncentivesHomePage, :click_startswell],
        [StartswellPage, :click_incentives]
    ],
    :continue_unsubmitted_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :continue_order],
        [ShippingInformationPage, :click_save_and_continue]
    ],
    :retail_quick_checkout => [
        [ShopOnlinePage, :click_view_cart],
        [ProductsInYourCartPage, :click_checkout]
    ],
    :consultant_retail_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_retail_order],
        [ShippingInformationPage, :enter_retail_shipping_info],
        [ShopOnlinePage, :add_product_to_cart],
        [ProductInformationPage, :add_product_to_cart]

    ]
}
