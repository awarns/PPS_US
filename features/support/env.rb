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
        [AddressInfoPage, :update_shipping_info]
    ],
}

PageObject::PageFactory.route_data = {
    :nav_through_profile => :default,
}