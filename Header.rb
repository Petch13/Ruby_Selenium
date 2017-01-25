require 'selenium-webdriver'
# C:/Users/Andrew/Desktop/TapQA/ruby/chromedriver.exe :::home path:::
# C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe :::work path:::

driver = Selenium::WebDriver.for :chrome, driver_path: 'C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe'

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::TapQA Header logo Link image::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

driver.navigate.to "http://www.tapqa.com"
driver.manage.window.maximize
#homepage TapQA logo button > redirects the user to the home page.
tapqalogo = driver.find_element(:css, "div.fusion-logo a")
tapqalogo.click
#there was a sleep command here.
homepage = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage.text
if homepage.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the home page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep (1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::Solutions Header Link and Drop Down Links:::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#homepage Solutions button > redirects the user to /solutions/ page.
solutionsbutton = driver.find_element(:id, "menu-item-26")
solutionsbutton.click
#there was a sleep command here.
solutionspage = driver.find_element(:class, "title-heading-left")
puts solutionspage.text
if solutionspage.text == "Our Quality Solutions"
	puts "PASS"
else
	puts "Fail: The Solutions button on the home page on the header didn't work or take you to the correct destination."
end

sleep (1)
solutionsbutton1 = driver.find_element(:id, "menu-item-26")
driver.action.move_to(solutionsbutton1).perform
#sleep(1)
click1 = driver.find_element(:id, "menu-item-1868")
click1.click
#sleep(1)
stpage = driver.find_element(:class, "headline")
puts stpage.text
if stpage.text == "Helping our clients with understanding how their current business processes integrate with their IT processes, technology & organization structure."
    puts "PASS"
else
	puts "Fail: The tap|STRATEGY button under the SOLUTIONS button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
solutionsbutton2 = driver.find_element(:id, "menu-item-26")
driver.action.move_to(solutionsbutton2).perform
#sleep(1)
click2 = driver.find_element(:id, "menu-item-1869")
click2.click
#sleep(1)
autopage = driver.find_element(:class, "headline")
puts autopage.text
if autopage.text == "We use technology to provide meaningful metrics & transparency into your software development."
    puts "PASS"
else
	puts "Fail: The tap|AUTOMATION button under the SOLUTIONS button on the header didn't work or take you to the correct destination."
end
sleep (2)

driver.navigate.back

#sleep (1)
solutionsbutton3 = driver.find_element(:id, "menu-item-26")
driver.action.move_to(solutionsbutton3).perform
#sleep(1)
click3 = driver.find_element(:id, "menu-item-1870")
click3.click
#sleep(1)
conpage = driver.find_element(:class, "title-heading-left")
puts conpage.text
if conpage.text == "About Our BA and QA Consulting"
    puts "PASS"
else
	puts "Fail: The tap|CONSULTING button under the SOLUTIONS button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
solutionsbutton4 = driver.find_element(:id, "menu-item-26")
driver.action.move_to(solutionsbutton4).perform
#sleep(1)
click4 = driver.find_element(:id, "menu-item-1871")
click4.click
#sleep(1)
lakepage = driver.find_element(:class, "headline")
puts lakepage.text
if lakepage.text == "Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes, we have the drive and the know-how to get your job done right the first time."
    puts "PASS"
else
	puts "Fail: The tap|LAKESHORE button under the SOLUTIONS button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
solutionsbutton1 = driver.find_element(:id, "menu-item-26")
solutionsbutton1.click
#there was a sleep command here.
solutionspage1 = driver.find_element(:class, "fusion-logo-link")
solutionspage1.click
homepage1 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage1.text
if homepage1.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the SOLUTIONS page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep(1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::About Header Link and Drop Down Links:::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#homepage About button > redirects the user to /About/ page.
aboutbutton = driver.find_element(:id, "menu-item-1861")
aboutbutton.click
#there was a sleep command here.
aboutpage = driver.find_element(:class, "fusion-page-title-captions")
puts aboutpage.text
if aboutpage.text == "About Us"
    puts "PASS"
else
	puts "Fail: The ABOUT button on the home page on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
aboutbutton1 = driver.find_element(:id, "menu-item-1861")
driver.action.move_to(aboutbutton1).perform
#sleep(1)
click5 = driver.find_element(:id, "menu-item-25")
click5.click
#sleep(1)
leadpage = driver.find_element(:class, "fusion-page-title-captions")
puts leadpage.text
if leadpage.text == "Leadership"
    puts "PASS"
else
	puts "Fail: The Leadership button under the ABOUT button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
aboutbutton2 = driver.find_element(:id, "menu-item-1861")
driver.action.move_to(aboutbutton2).perform
#sleep(1)
click6 = driver.find_element(:id, "menu-item-2018")
click6.click
#sleep(1)
newspage = driver.find_element(:class, "fusion-page-title-captions")
puts newspage.text
if newspage.text == "News & Events"
    puts "PASS"
else
	puts "Fail: The News & Events button under the ABOUT button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
aboutbutton1 = driver.find_element(:id, "menu-item-1861")
aboutbutton1.click
#there was a sleep command here.
aboutpage1 = driver.find_element(:class, "fusion-logo-link")
aboutpage1.click
homepage2 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage2.text
if homepage2.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the ABOUT page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep(1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::Explore Header Link and Drop Down Links:::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#homepage Explore button > redirects the user to /Explore/ page.
explorebutton = driver.find_element(:id, "menu-item-2830")
explorebutton.click
#there was a sleep command here.
explorepage = driver.find_element(:class, "fusion-page-title-captions")
puts explorepage.text
if explorepage.text == "Knowledge Center"
    puts "PASS"
else
	puts "Fail: The EXPLORE button on the home page on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton1 = driver.find_element(:id, "menu-item-2830")
driver.action.move_to(explorebutton1).perform
#sleep(1)
click7 = driver.find_element(:id, "menu-item-2614")
click7.click
#sleep(1)
faqpage = driver.find_element(:class, "fusion-page-title-captions")
puts faqpage.text
if faqpage.text == "FAQ"
    puts "PASS"
else
	puts "Fail: The FAQ button under the EXPLORE button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton2 = driver.find_element(:id, "menu-item-2830")
driver.action.move_to(explorebutton2).perform
#sleep(1)
click8 = driver.find_element(:id, "menu-item-2831")
click8.click
#sleep(1)
knowledgepage = driver.find_element(:class, "title-heading-left")
puts knowledgepage.text
if knowledgepage.text == "Hot Topics"
    puts "PASS"
else
	puts "Fail: The Knowledge Center button under the EXPLORE button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton3 = driver.find_element(:id, "menu-item-2830")
driver.action.move_to(explorebutton3).perform
#sleep(1)
click9 = driver.find_element(:id, "menu-item-2613")
click9.click
#sleep(1)
interviewspage = driver.find_element(:class, "fusion-page-title-captions")
puts interviewspage.text
if interviewspage.text == "Interviews"
    puts "PASS"
else
	puts "Fail: The Virtual Interviews button under the EXPLORE button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton4a = driver.find_element(:id, "menu-item-2830")
driver.action.move_to(explorebutton4a).perform
#sleep(1)
click9 = driver.find_element(:id, "menu-item-2631")
click9.click
#sleep(1)
click9a = driver.find_element(:id, "menu-item-2615")
click9a.click
#sleep(1)
softwaretestingpage = driver.find_element(:class, "headline")
puts softwaretestingpage.text
if softwaretestingpage.text == "We write and execute test cases that make your software or web application better."
    puts "PASS"
else
	puts "Fail: The Software Testing button under the EXPLORE button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton4b = driver.find_element(:id, "menu-item-2830")
driver.action.move_to(explorebutton4b).perform
#sleep(1)
click10 = driver.find_element(:id, "menu-item-2631")
click10.click
#sleep(1)
click10b = driver.find_element(:id, "menu-item-2632")
click10b.click
#sleep(1)
mobilepageb = driver.find_element(:class, "headline")
puts mobilepageb.text
if mobilepageb.text == "Complex and Evolving Mobile Landscapes Have Never Been Easier to Test with tap|QA"
    puts "PASS"
else
	puts "Fail: The Mobile Testing button under the EXPLORE button on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
explorebutton1 = driver.find_element(:id, "menu-item-2830")
explorebutton1.click
#there was a sleep command here.
explorepage1 = driver.find_element(:class, "fusion-logo-link")
explorepage1.click
homepage3 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage3.text
if homepage3.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the EXPLORE page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep(1)
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::Careers Header Link:::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#homepage Careers button > redirects the user to /Careers/ page.
careersbutton = driver.find_element(:id, "menu-item-22")
careersbutton.click
#there was a sleep command here.
careerspage = driver.find_element(:class, "fusion-page-title-captions")
puts careerspage.text
if careerspage.text == "Careers"
    puts "PASS"
else
	puts "Fail: The CAREERS button on the home page on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

sleep (1)
careersbutton1 = driver.find_element(:id, "menu-item-22")
careersbutton1.click
#there was a sleep command here.
careerspage = driver.find_element(:class, "fusion-logo-link")
careerspage.click
homepage4 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage4.text
if homepage4.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the CAREERS page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep(1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::Contact Us Header Link::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#homepage Contact Us button > redirects the user to /Contact-us/ page.
contactusbutton = driver.find_element(:id, "menu-item-23")
contactusbutton.click
#there was a sleep command here.
contactuspage = driver.find_element(:class, "fusion-page-title-captions")
puts contactuspage.text
if contactuspage.text == "Contact Us"
    puts "PASS"
else
	puts "Fail: The CONTACT US button on the home page on the header didn't work or take you to the correct destination."
end
#sleep (1)

driver.navigate.back

#sleep (1)
contactusbutton1 = driver.find_element(:id, "menu-item-23")
contactusbutton1.click
#there was a sleep command here.
contactuspage = driver.find_element(:class, "fusion-logo-link")
contactuspage.click
homepage5 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage5.text
if homepage5.text == "We test software"
	puts "PASS"
else
	puts "Fail: The tapQA Logo button on the CONTACT US page in the top left hand corner didn't work or take you to the correct destination."
end
#sleep (1)
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::Magnifying Glass Header Link::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#Search for the word "test"
magnifyingglassbutton = driver.find_element(:class_name, "fusion-main-menu-icon")
magnifyingglassbutton.click
#sleep (1)
mgsearch = driver.find_element(:class, "s").send_keys 'Test'
driver.action.send_keys(:return).perform
#sleep (1)
searchpage = driver.find_element(:class, "fusion-page-title-captions")
puts searchpage.text
if searchpage.text == "Search results for: Test"
	puts "PASS"
else
	puts "Fail1: The Search button on the home page on the header didn't work or take you to the correct destination."
end

driver.navigate.back

#Search using no text in the text field.  And pressing the search button instead of just pressing enter.
magnafyingglassbutton = driver.find_element(:class_name, "fusion-main-menu-icon")
magnafyingglassbutton.click
#sleep (1)
searchbutton = driver.find_element(:class_name, "search-button")
searchbutton.click
#sleep(1)
searchpage = driver.find_element(:class, "fusion-page-title-captions")
puts searchpage.text
if searchpage.text == "Search results for:"
	puts "PASS"
else
	puts "Fail2: The Search button on the home page on the header didn't work or take you to the correct destination."
end

driver.navigate.back

#Using the search button with no text in the text field
magnafyingglassbutton1 = driver.find_element(:class_name, "fusion-main-menu-icon")
magnafyingglassbutton1.click
#sleep (1)
searchbutton1 = driver.find_element(:class_name, "search-button")
searchbutton1.click
#sleep (1)
searchpage1 = driver.find_element(:class, "fusion-page-title-captions")
puts searchpage1.text
if searchpage1.text == "Search results for:"
	puts "PASS"
else
	puts "Fail3: The Search button on the home page on the header didn't work or take you to the correct destination."
end

driver.navigate.back

#Using the search button with text in the text field
magnafyingglassbutton1 = driver.find_element(:class_name, "fusion-main-menu-icon")
magnafyingglassbutton1.click
#sleep (1)
mgsearch1 = driver.find_element(:class, "s").send_keys 'Test'
searchbutton1 = driver.find_element(:class_name, "search-button")
searchbutton1.click
#sleep (1)
searchpage1 = driver.find_element(:class, "fusion-page-title-captions")
puts searchpage1.text
if searchpage1.text == "Search results for: Test"
	puts "PASS"
else
	puts "Fail4: The Search button on the home page on the header didn't work or take you to the correct destination."
end
driver.quit