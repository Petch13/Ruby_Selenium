require "selenium-webdriver"

$driver = Selenium::WebDriver.for :chrome
$driver.navigate.to "http://www.tapqa.com"
$driver.manage.window.maximize

explore_nav = $driver.find_element(:id, "menu-item-2830")

$driver.action.move_to(explore_nav).perform
sleep(1)
virtual_interviews_link = $driver.find_element(:id, "menu-item-2613")
virtual_interviews_link.click

def check_internal_link (test_description, link_css, validation_css, validation_text)

	link_text = $driver.find_element(:css, link_css)
	link_text.click

	# puts "validation css #{validation_css}"
	# puts "validation text #{validation_text}"

	validation = $driver.find_element(:css, validation_css)
	# expect(validation.text).to eq(validation_text)
	# puts "validationnnnn #{validation.text}"

	if validation.text == validation_text
		puts "Pass, link: #{test_description}"
	else 
		puts "Fail, link: #{test_description}"
	end

	$driver.navigate.back
end

check_internal_link "tapQA Interview with Jane Fraser from Anki", "#post-2549 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Jane Fraser from Anki"

check_internal_link "tapQA Interview with Dawn Haynes from PerfTestPlus", "#post-2546 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Dawn Haynes from PerfTestPlus"

check_internal_link "tapQA Interview with Brandon Carlson from Lean Techniques", "#post-2543 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Brandon Carlson from Lean Techniques"

check_internal_link "tapQA Interview with Melissa Benua from PlayFab", "#post-2537 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Melissa Benua from PlayFab"

check_internal_link "tapQA Interview with Annette Ash from SolutionsIQ", "#post-2540 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Annette Ash from SolutionsIQ"

check_internal_link "tapQA Interview with Mike Sowers", "#post-2534 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Mike Sowers"

sleep(2)
next_page = $driver.find_element(:css, "div.pagination.clearfix a.pagination-next")
next_page.click

check_internal_link "tapQA Interview with Mike Wasielczyk from T. Rowe Price", "#post-2531 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Mike Wasielczyk from T. Rowe Price"

check_internal_link "tapQA Interview with Marjana Shammi from IceMobile", "#post-2528 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Marjana Shammi from IceMobile"

check_internal_link "tapQA Interview with Sylvia from HP", "#post-2525 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Sylvia from HP"

check_internal_link "tapQA Interview with David Dang from Zenergy Technologies", "#post-2519 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with David Dang from Zenergy Technologies"

check_internal_link "tapQA Interview with Isabel Evans from BCS SIGiST", "#post-2516 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Isabel Evans from BCS SIGiST"

check_internal_link "tapQA Interview with Alison Wade from Techwell", "#post-2522 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Alison Wade from Techwell"

sleep(2)
next_page = $driver.find_element(:css, "div.pagination.clearfix a.pagination-next")
next_page.click

check_internal_link "tapQA Interview with Mike Faulise", "#post-2513 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Mike Faulise"

check_internal_link "tapQA Interview with Shauna Ayers & Catherine Cruz Agosto from Availity", "#post-2510 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Shauna Ayers & Catherine Cruz Agosto from Availity"

check_internal_link "tapQA Interview with Jeff Payne from Coveros", "#post-2506 .fusion-post-wrapper .fusion-post-content-wrapper .fusion-post-content .entry-title a", 
".fusion-page-title-captions h1", "tapQA Interview with Jeff Payne from Coveros"


sleep(2)
previous_page = $driver.find_element(:css, "div.pagination.clearfix a.pagination-prev")
previous_page.click

sleep(2)
check_internal_link "Contact Us Button", ".fusion-column-tablecell .fusion-button-wrapper .fusion-button", 
".fusion-page-title-captions h1", "Contact Us"

$driver.quit