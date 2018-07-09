require "selenium-webdriver"
require "rspec"

describe 'Logging into freshdesk' do
	
	before(:all) do
		Selenium::WebDriver::Chrome.driver_path="/Users/deepakrajj/Downloads/chromedriver"
		@driver = Selenium::WebDriver.for :chrome
		@driver.manage.timeouts.page_load = 300
		@driver.manage.timeouts.implicit_wait = 300
	end

	after(:all)	do
		sleep 10
		@driver.quit
	end

	it "to verify the successful login" do
		@driver.get "https://freshdesk.com/login"
		@driver.find_element(:xpath => "//input[@name='domain-fdesk-login']").send_keys "helpdesk228"
		@driver.find_element(:xpath => "//input[@value='PROCEED']").click
		@driver.find_element(:xpath => "//b[contains(text(),'Login')]").click
		@driver.find_element(:xpath => "//a[contains(text(),'Login here')]").click
		@driver.find_element(:xpath => "//input[@name='email']").send_keys "*type email*"
		@driver.find_element(:xpath => "//input[@type='password']").send_keys "*type password*"
		@driver.find_element(:xpath => "(//li[@class='clear']/button)[1]").click
	end

	it "Test to check the logged in user is present in social stream" do
		@driver.find_element(:xpath => "//a[@aria-label='Admin']").click
		@driver.find_element(:xpath => "//a[@href='/a/admin/social/streams']").click
		puts "Test page"
		expected_text=@driver.find_element(:xpath => "(//a[contains(@href,'twitter_streams')])[2]")
		result = expected_text.getText()
		puts result
	end
end