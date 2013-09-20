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
        [ShippingInformationPage, :click_save_and_continue],
        [YourInvoicePage, :click_back_to_products]
    ],
    :consultant_retail_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_retail_order],
        [ShippingInformationPage, :enter_retail_shipping_info],
        [ShopOnlinePage, :add_product_to_cart],
        [ProductInformationPage, :add_product_to_cart]
    ],
    :retail_checkout => [
        [ShopOnlinePage, :click_view_cart],
        [ProductsInYourCartPage, :click_checkout],
        [YourInvoicePage, :pay_for_order],
        [PaymentPage, :checkout_with_credit_card],
        [SubmittingOrderPage, :verify_submission]
    ],
    :consultant_party_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_party_order],
        [HostInformationPage, :enter_host_info]
    ],
    :party_order_add_guest => [
        [OrderDetailsPage, :click_add_guest],
        [GuestInformationPage, :add_guest]
    ],
    :party_order_add_products => [
        [OrderDetailsPage, :add_item_to_party_order],
        [OrderDetailsPage, :party_personalize_item_with_icon_it],
        [OrderDetailsPage, :add_item_to_party_order, :item_code => '3893'],
        [OrderDetailsPage, :party_personalize_item_with_none],
        [OrderDetailsPage, :add_item_to_party_order, :customer_list => 'Mike Ross'],
        [OrderDetailsPage, :party_personalize_item_with_icon_it]
    ],

}

