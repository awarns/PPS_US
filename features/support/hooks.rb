require 'watir-webdriver'
require 'fig_newton'

Before do
  @browser = Watir::Browser.new :firefox

end

After do
  #@browser.close
end
