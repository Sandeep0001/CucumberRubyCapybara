require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'holdon'

After do |scenario|
	page.save_screenshot(scenario.title+'.png') if scenario.failed?
end

Capybara.register_driver :my_firefox_driver do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.download.folderList'] = 2
  profile['browser.helperApps.alwaysAsk.force'] = false
  profile['browser.download.manager.showWhenStarting'] = false
  profile['browser.helperApps.neverAsk.saveToDisk'] = "text/plain"
  profile['csvjs.disabled'] = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end

Capybara.default_driver = :my_firefox_driver

Capybara.app_host = ENV['BASE_URL']

#Capybara.default_driver = :selenium

Capybara::Selenium::Driver.class_eval do
  def quit
    puts "Press RETURN to quit the browser"
    $stdin.gets
    @browser.quit
  rescue Errno::ECONNREFUSED
    # Browser must have already gone
  end
end

def create
  render js: "window.location.pathname = #{home_path.to_json}"
end