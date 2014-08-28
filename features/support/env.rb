require 'rubygems'
require 'selenium-webdriver'

$driver=nil
$driver = Selenium::WebDriver.for(:chrome)

After { $driver.close }