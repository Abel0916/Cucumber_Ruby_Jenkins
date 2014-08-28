require_relative '../support/env'

Given(/^I navigate to "([^"]*)" Field Web page$/) do |field_home_page|
  $driver.get field_home_page
end

And(/^I enter "([^"]*)" as username in "([^"]*)" field$/) do |username, username_id|
  $driver.find_element(:id, username_id).send_key username
end

And(/^I enter "([^"]*)" as password in "([^"]*)" field$/) do |passwd, password_id|
  $driver.find_element(:id, password_id).send_key passwd
end

And(/^I click "([^"]*)" button and i should see "([^"]*)" in Home page$/) do |signin_id,issue_graph|
  $driver.find_element(:id, signin_id).click
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  wait.until {$driver.find_element(:id, issue_graph)}
end