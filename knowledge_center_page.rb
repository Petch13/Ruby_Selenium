require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
$driver.navigate.to "http://www.tapqa.com"
$driver.manage.window.maximize

explore_link = $driver.find_element(:id, "menu-item-2830")
explore_link.click

knowledge_center_text = $driver.find_element(:css, ".fusion-page-title-captions h1")
puts knowledge_center_text.text


if knowledge_center_text.text == "Knowledge Center"
	puts "PASS"
else
	puts "FAIL"
end

# test direction navs under "hot topics"
nav_next = $driver.find_element(:css, ".fusion-three-fifth div .fusion-flexslider .flex-direction-nav li .flex-next")
nav_next.click

current_slide = $driver.find_element(:css, ".fusion-three-fifth div .fusion-flexslider .slides .flex-active-slide a")
current_slide.attribute("href")

if current_slide.attribute("href") == "http://www.tapqa.com/2016/11/11/the-importance-of-software-testers/"
	puts "pass - next nav works"
else
	puts "fail - next nav not working"
end

sleep(2)

nav_prev = $driver.find_element(:css, ".fusion-three-fifth div .fusion-flexslider .flex-direction-nav li .flex-prev")
nav_prev.click

current_slide = $driver.find_element(:css, ".fusion-three-fifth div .fusion-flexslider .slides .flex-active-slide a")
current_slide.attribute("href")

if current_slide.attribute("href") == "http://www.tapqa.com/2016/12/22/future-testers-sdets/"
	puts "pass - prev nav works"
else
	puts "fail - prev nav not working"
end

def check_internal_link (test_description, link_css, validation_css, validation_text)

	link_text = $driver.find_element(:css, link_css)
	link_text.click

	puts "validation css #{validation_css}"
	puts "validation text #{validation_text}"

	validation = $driver.find_element(:css, validation_css)
	puts "validationnnnn #{validation.text}"

	if validation.text == validation_text
		puts "Pass, link: #{test_description}"
	else 
		puts "Fail, link: #{test_description}"
	end

	$driver.navigate.back
end


check_internal_link "technology corner", ".fusion-column-last .fusion-column-wrapper .fusion-flexslider .slides .flex-active-slide", ".fusion-page-title-captions h1", "Technology Corner Episode 1: Native Application Android with Calabash and Gherkin"

check_internal_link "Automated Testing", ".cat-item-55 a", ".fusion-page-title-captions h1", "Automated Testing"

check_internal_link "Case Studies", ".cat-item-21 a", ".fusion-page-title-captions h1", "Case Studies"

check_internal_link "Continuous Integration", ".cat-item-53 a", ".fusion-page-title-captions h1", "Continuous Integration"

check_internal_link "Customized Training", ".cat-item-15 a", ".fusion-page-title-captions h1", "Customized Training"

check_internal_link "Events", ".cat-item-19 a", ".fusion-page-title-captions h1", "Events"

check_internal_link "Functional Testing", ".cat-item-13 a", ".fusion-page-title-captions h1", "Functional Testing"

check_internal_link "Hot Topics", ".cat-item-11 a", ".fusion-page-title-captions h1", "Hot Topics"

check_internal_link "Industry Trends", ".cat-item-54 a", ".fusion-page-title-captions h1", "Industry Trends"

check_internal_link "Load/Performance Testing", ".cat-item-12 a", ".fusion-page-title-captions h1", "Load/Performance Testing"

check_internal_link "Outsourcing QA", ".cat-item-81 a", ".fusion-page-title-captions h1", "Outsourcing QA"

check_internal_link "Technology Corner", ".cat-item-67 a", ".fusion-page-title-captions h1", "Technology Corner"

check_internal_link "Testing Teams", ".cat-item-14 a", ".fusion-page-title-captions h1", "Testing Teams"

check_internal_link "Webinars", ".cat-item-20 a", ".fusion-page-title-captions h1", "Webinars"

$driver.quit