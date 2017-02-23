require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
$driver.navigate.to "http://www.tapqa.com"
$driver.manage.window.maximize

def click_link (link_css)
	link = $driver.find_element(:css, link_css)
	link.click
end

def get_current_url
	@url = $driver.current_url
end

def validate_content (validation_css, validation_text)
	validation = $driver.find_element(:css, validation_css)
	expect(validation.text).to eq(validation_text)
end

Given(/^We have navigated to the Knowledge Center page$/) do
	click_link "#menu-item-2830"
	get_current_url
	expect(@url).to eq("http://www.tapqa.com/knowledge-center/")
end

# When(/^We click on the "[^"]*" link$/) do
# 	click_link ".cat-item-55 a"
# end

# Then (/^The browser will navigate to the "[^"]*" page$/) do
# 	validate_content ".fusion-page-title-captions h1", "Automated Testing"
# end

When(/^We click on the Automated Testing link$/) do
	click_link ".cat-item-55 a"
end

Then (/^The browser will navigate to the Automated Testing page$/) do
	get_current_url
	expect(@url).to eq("http://www.tapqa.com/category/automated-testing/")
end

And (/^The heading text is Automated Testing$/) do
	validate_content ".fusion-page-title-captions h1", "Automated Testing"
end



When(/^We click on the Technology Corner link$/) do
	click_link ".fusion-column-last .fusion-column-wrapper .fusion-flexslider .slides .flex-active-slide"
end

Then (/^The browser will navigate to the Technology Corner page$/) do
	get_current_url
	expect(@url).to eq("http://www.tapqa.com/2016/11/17/technology-corner-episode-1-native-android-application-with-gherkin/")
end

And (/^The heading text is Technology Corner Episode 1: Native Application Android with Calabash and Gherkin$/) do
	validate_content ".fusion-page-title-captions h1", "Technology Corner Episode 1: Native Application Android with Calabash and Gherkin"
end