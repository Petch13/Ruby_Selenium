require 'selenium-webdriver'
# C:/Users/Andrew/Desktop/TapQA/ruby/chromedriver.exe :::home path:::
# C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe :::work path:::

driver = Selenium::WebDriver.for :chrome, driver_path: 'C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe'

driver.navigate.to "http://www.tapqa.com"
driver.manage.window.maximize
#there was a sleep command here.
#homepage TapQA logo button > redirects the user to the home page.
tapqalogo = driver.find_element(:css, "div.fusion-logo a")
tapqalogo.click
#there was a sleep command here.
homepage = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[1]/div/div[1]/div/h1/b/i")
puts homepage.text
if homepage.text == "We test software"
	puts "PASS"
else
	puts "I don't know where you went.  But it's not the home page..."
end
sleep (2)

#homepage Solutions button > redirects the user to /solutions/ page.
solutionsbutton = driver.find_element(:id, "menu-item-26")
solutionsbutton.click
#there was a sleep command here.
solutionspage = driver.find_element(:xpath, ".//*[@id='post-13']/div/div[1]/div/div[1]/div/p")
puts solutionspage.text
if solutionspage.text == "tap|QA offers a number of solutions designed to complement your company’s core competencies. From strategic planning, to software testing QA, to nearshore resources, to continuous integration, and more, tap|QA has you covered. Our years of expertise, utilization of local resources, and competitive pricing put our solution offerings at the head of the pack."
	puts "PASS"
else
	puts "I don't know where you went.  But it's not the solutions page..."
end
sleep (2)

driver.navigate.back

driver.navigate.to "http://www.tapqa.com"
#homepage About button > redirects the user to /About/ page.
aboutbutton = driver.find_element(:id, "menu-item-1861")
aboutbutton.click
#there was a sleep command here.
aboutpage = driver.find_element(:xpath, ".//*[@id='post-1856']/div/div[1]/div/div[1]/div/p[1]")
puts aboutpage.text
if aboutpage.text == "Founded in 2004, and restructured in 2010, Twin Cities-based tap|QA is a process and technology company specializing in quality."
    puts "PASS"
else
	puts "I don't know where you went.  But it's not the About page..."
end
sleep (2)

driver.navigate.back

#homepage Explore button > redirects the user to /Explore/ page.
explorebutton = driver.find_element(:id, "menu-item-2830")
explorebutton.click
#there was a sleep command here.
explorepage = driver.find_element(:xpath, ".//*[@id='post-2690']/div/div[4]/div/div[1]/div/div[1]/h2")
puts explorepage.text
if explorepage.text == "What’s New With Test Automation?"
    puts "PASS"
else
	puts "I don't know where you went.  But it's not the Explore page..."
end
sleep (2)

driver.navigate.back

driver.navigate.to "http://www.tapqa.com"
#homepage Careers button > redirects the user to /Careers/ page.
careersbutton = driver.find_element(:id, "menu-item-22")
careersbutton.click
#there was a sleep command here.
careerspage = driver.find_element(:xpath, ".//*[@id='post-17']/div/p[4]")
puts careerspage.text
if careerspage.text == "Our team members work at various client sites, as well as at our location, just a few miles west of downtown Minneapolis."
    puts "PASS"
else
	puts "I don't know where you went.  But it's not the Careers page..."
end
sleep (2)

driver.navigate.back

driver.navigate.to "http://www.tapqa.com"
#homepage Contact Us button > redirects the user to /Contact-us/ page.
contactusbutton = driver.find_element(:id, "menu-item-23")
contactusbutton.click
#there was a sleep command here.
contactuspage = driver.find_element(:xpath, ".//*[@id='post-19']/div/div[1]/div/p")
puts contactuspage.text
if contactuspage.text == "Please take a few seconds to let us know your interests. Thanks!"
    puts "PASS"
else
	puts "I don't know where you went.  But it's not the Contact Us page..."
end
sleep (2)

driver.quit