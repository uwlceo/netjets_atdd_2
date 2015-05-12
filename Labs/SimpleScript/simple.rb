require 'watir-webdriver'

browser = Watir::Browser.new(:chrome)

browser.goto 'http://manifestsc.com'

browser.a(:text => 'ABOUT US').click
