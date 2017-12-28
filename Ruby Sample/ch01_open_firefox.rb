#test selenium ruby file
#simple example

#requiring selenium-webdriver
require 'selenium-webdriver'
#specifying which driver to use
driver = Selenium::WebDriver.for(:firefox)
#instructing Selenium to open this site
driver.navigate.to("http://globo.sparknet.me")