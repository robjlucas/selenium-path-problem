require "capybara/rails"
require "capybara/rspec"
require "selenium/webdriver"

Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--headless=true")

  logger = Selenium::WebDriver.logger
  logger.level = :debug

  Capybara::Selenium::Driver.new(app, browser: :chrome, options:)
end

Capybara.javascript_driver = :headless_chrome
