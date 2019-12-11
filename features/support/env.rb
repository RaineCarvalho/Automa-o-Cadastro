require "byebug"
require "capybara"
require "cpf_cnpj"
require "capybara/cucumber"
require "faker"
require "rspec"
require "selenium-webdriver"

ENV["NO_PROXY"] = "127.0.0.1"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://pt-api-qa.guideinvestimentos.com.br/"
  config.default_max_wait_time = 30
end
