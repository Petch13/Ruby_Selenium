require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
$driver.navigate.to "http://www.tapqa.com"
$driver.manage.window.maximize

explore_nav = $driver.find_element(:id, "menu-item-2830")

$driver.action.move_to(explore_nav).perform
testing_nav = $driver.find_element(:id, "menu-item-2631")
$driver.action.move_to(testing_nav).perform
software_testing_link = $driver.find_element(:id, "menu-item-2615")
software_testing_link.click

def check_internal_link (test_description, link_css, validation_css, validation_text)

	link_text = $driver.find_element(:css, link_css)
	link_text.click

	validation = $driver.find_element(:css, validation_css)

	if validation.text == validation_text
		puts "Pass, link: #{test_description}"
	else 
		puts "Fail, link: #{test_description}"
	end

	$driver.navigate.back
end

check_internal_link "tap|STRATEGY", "#menu-item-1872 a", ".fusion-page-title-captions h1", "tap|STRATEGY"

check_internal_link "tap|AUTOMATION", "#menu-item-1875 a", ".fusion-page-title-captions h1", "tap|AUTOMATION"

check_internal_link "tap|CONSULTING", "#menu-item-1873 a", ".fusion-page-title-captions h1", "tap|CONSULTING"

check_internal_link "tap|LAKESHORE", "#menu-item-1874 a", ".fusion-page-title-captions h1", "tap|LAKESHORE"

$driver.quit
