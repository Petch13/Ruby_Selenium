require 'selenium-webdriver'
# C:/Users/Andrew/Desktop/TapQA/ruby/chromedriver.exe :::home path:::
# C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe :::work path:::

driver = Selenium::WebDriver.for :chrome, driver_path: 'C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe'


driver.navigate.to "http://www.tapqa.com"
driver.manage.window.maximize

#:::::::::::::::::::::::::::::::::::
#:::::::::::::::Footer::::::::::::::
#:::::::::::::::::::::::::::::::::::

footerleft1 = driver.find_element(:link_text, "Quality Strategy")
footerleft1.click
fl1page = driver.find_element(:class, "headline")
if fl1page.text == "Helping our clients with understanding how their current business processes integrate with their IT processes, technology & organization structure."
	puts "PASS"
else
	puts "Fail: The Quality Strategy text button on the footer under ::WE PROVIDE STRATEGY, RESOURCES, AND TESTING:: didn't work or take you to the correct destination."
end

driver.navigate.back

footerleft2 = driver.find_element(:link_text, "Automated QA Testing")
footerleft2.click
fl2page = driver.find_element(:class, "headline")
if fl2page.text == "We use technology to provide meaningful metrics & transparency into your software development."
	puts "PASS"
else
	puts "Fail: The Automated QA Testing text button on the footer under ::WE PROVIDE STRATEGY, RESOURCES, AND TESTING:: didn't work or take you to the correct destination."
end

driver.navigate.back

footerleft3 = driver.find_element(:link_text, "Manual QA Testing")
footerleft3.click
fl3page = driver.find_element(:class, "title-heading-left")
if fl3page.text == "About Our BA and QA Consulting"
	puts "PASS"
else
	puts "Fail: The Manual QA Testing text button on the footer under ::WE PROVIDE STRATEGY, RESOURCES, AND TESTING:: didn't work or take you to the correct destination."
end

driver.navigate.back

footerleft4 = driver.find_element(:link_text, "Nearshore Services")
footerleft4.click
fl4page = driver.find_element(:class, "headline")
if fl4page.text == "Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes, we have the drive and the know-how to get your job done right the first time."
	puts "PASS"
else
	puts "Fail: The Nearshore Services text button on the footer under ::WE PROVIDE STRATEGY, RESOURCES, AND TESTING:: didn't work or take you to the correct destination."
end

driver.navigate.back

footerleft5 = driver.find_element(:link_text, "Continuous Integration")
footerleft5.click
fl5page = driver.find_element(:class, "headline")
if fl5page.text == "Continuous integration allows us to test rapidly and efficiently."
	puts "PASS"
else
	puts "Fail: The Continuous Integration text button on the footer under ::WE PROVIDE STRATEGY, RESOURCES, AND TESTING:: didn't work or take you to the correct destination."
end

driver.navigate.back

#####################
###News and Events###
#####################

#Needs work

#####################
###Connect With Us###
#####################

facebook = driver.find_element(:class, "fusion-icon-facebook")
facebook.click
sleep (1)
stringurlfb = driver.current_url
if stringurlfb == "https://www.facebook.com/tapQA"
	puts "we're on the TapQA Facebook page!"
else
	puts "Fail: The Facebook icon on the footer on the right side didn't work or take you to the correct destination."
end

driver.navigate.back

twitter = driver.find_element(:class, "fusion-icon-twitter")
twitter.click
stringurltwitter = driver.current_url
if stringurltwitter == "https://twitter.com/tapqa"
	puts "we're on the TapQA Twitter page!"
else
	puts "Fail: The Twitter icon on the footer on the right side didn't work or take you to the correct destination."
end

driver.navigate.back

youtube = driver.find_element(:class, "fusion-icon-youtube")
youtube.click
stringurlyoutube = driver.current_url
if stringurlyoutube == "https://www.youtube.com/user/tapQA"
	puts "we're on the TapQA Youtube page!"
else
	puts "Fail: The Youtube icon on the footer on the right side didn't work or take you to the correct destination."
end

driver.navigate.back

linkedin = driver.find_element(:class, "fusion-icon-linkedin")
linkedin.click
stringurllinkedin = driver.current_url
if stringurllinkedin == "https://www.linkedin.com/company/1545252?trk=tyah"
	puts "we're on the TapQA Linkedin page!"
else
	puts "Fail: The Linkedin icon on the footer on the right side didn't work or take you to the correct destination."
end

driver.navigate.back

main_window = driver.window_handle
glassdoor = driver.find_element(:xpath, ".//*[@id='text-16']/div[1]/div/a/img")
glassdoor.click
windows = driver.window_handles
  windows.each do |window|
    if main_window != window
    driver.switch_to.window(window)
    glassdoorurl = driver.current_url
if glassdoorurl == "https://www.glassdoor.com/Overview/Working-at-tapQA-EI_IE736930.11,16.htm"
	puts "we're on the TapQA Glassdoor page!"
else
	puts "Fail: The Glassdoor icon on the footer on the right side didn't work or take you to the correct destination."
      end
    end
  end
sleep(3)
driver.quit