require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
$driver.navigate.to "http://www.tapqa.com"
$driver.manage.window.maximize

explore_nav = $driver.find_element(:id, "menu-item-2830")

$driver.action.move_to(explore_nav).perform

faq_link = $driver.find_element(:css, "#menu-item-2614")
faq_link.click

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
sleep(2)
check_internal_link "Continuous Integration", ".button-1", ".fusion-page-title-captions h1", "Continuous Integration"
sleep(1)

check_internal_link "DIY Workforce", ".button-2", "#post-2291 .entry-title", "Quality Assurance Consulting Workforce Development is DIY"
sleep(1)

check_internal_link "Nearshore Solution", ".button-3", "#post-2083 .entry-title", "Multimedia Company See Big Results By Nearshoring"
sleep(1)

check_internal_link "tap|LAKESHORE", "#accordion-2396-7 .fusion-panel .panel-collapse .panel-body a", ".fusion-page-title-captions h1", "tap|LAKESHORE"
sleep(1)


accordion_1_content = $driver.find_element(:id, "8d791b2dc6867ab46")
if accordion_1_content.displayed?
	puts "PASS - accordion content displayed"
else
	puts "FAIL - accordion content should be displayed"
end

accordion_1 = $driver.find_element(:css, "#accordion-2396-1 .fusion-panel .panel-heading")
accordion_1.click

sleep(2)

accordion_1_content = $driver.find_element(:id, "8d791b2dc6867ab46")
if accordion_1_content.displayed?
	puts "FAIL - accordion content should not be displayed"
else
	puts "PASS - accordion content not displayed"
end

$driver.quit