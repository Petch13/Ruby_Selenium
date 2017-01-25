
require 'selenium-webdriver'
# C:/Users/Andrew/Desktop/TapQA/ruby/chromedriver.exe :::home path:::
# C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe :::work path:::

driver = Selenium::WebDriver.for :chrome, driver_path: 'C:/Users/PC1/Desktop/TapQA/ruby/chromedriver.exe'


driver.navigate.to "http://www.tapqa.com"
driver.manage.window.maximize

#Strategy for Scaling Development and Quality button.
link1 = driver.find_element(:link_text, "Strategy for Scaling Development & Quality")
link1.click
tapstrategy = driver.find_element(:class, "headline")
puts tapstrategy.text
if tapstrategy.text == "Helping our clients with understanding how their current business processes integrate with their IT processes, technology & organization structure."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#Continuous Integration, Performance and Automation button.
#sleep (1)
link2 = driver.find_element(:link_text, "Continuous Integration, Performance & Automation")
link2.click
solutionsautomation = driver.find_element(:class, "headline")
puts solutionsautomation.text
if solutionsautomation.text == "We use technology to provide meaningful metrics & transparency into your software development."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

# Ensuring Quality in Software Development button.
#sleep (1)
link3 = driver.find_element(:link_text, "Ensuring Quality in Software Development")
link3.click
tapconsulting = driver.find_element(:class, "title-heading-left")
puts tapconsulting.text
if tapconsulting.text == "About Our BA and QA Consulting"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

# Ensuring Quality in Software Development button.
#sleep (1)
#.
link4 = driver.find_element(:link_text, "I Need a Nearshore Solution")
link4.click
nearshore = driver.find_element(:class, "headline")
puts nearshore.text
if nearshore.text == "Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes, we have the drive and the know-how to get your job done right the first time."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
driver.navigate.back #:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Quality Strategies link text button.
qstextlink = driver.find_element(:link_text, "quality strategies")
qstextlink.click
tapstrategy2 = driver.find_element(:class, "headline")
puts tapstrategy2.text
if tapstrategy2.text == "Helping our clients with understanding how their current business processes integrate with their IT processes, technology & organization structure."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

# Automated testing link text button.
#sleep (1)
attextlink = driver.find_element(:link_text, "automated testing")
attextlink.click
solutionsautomation2 = driver.find_element(:class, "headline")
puts solutionsautomation2.text
if solutionsautomation2.text == "We use technology to provide meaningful metrics & transparency into your software development."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

# Manual testing link text button.
#sleep (1)
mttextlink = driver.find_element(:link_text, "manual testing")
mttextlink.click
tapconsulting2 = driver.find_element(:class, "title-heading-left")
puts tapconsulting2.text
if tapconsulting2.text == "About Our BA and QA Consulting"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

# Nearshore services link text button.
#sleep (1)
nstextlink = driver.find_element(:link_text, "nearshore services")
nstextlink.click
nearshore2 = driver.find_element(:class, "headline")
puts nearshore2.text
if nearshore2.text == "Your nearshore solution, even nearer than you thought. Coming to you from the land of 10,000 lakes, we have the drive and the know-how to get your job done right the first time."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
driver.navigate.back #:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

# Mobile testing image button.
#sleep (1)
mobiletestingimg = driver.find_element(:class_name, "wp-image-1975")
mobiletestingimg.click
mobiletestingpage = driver.find_element(:class, "title-heading-left")
puts mobiletestingpage.text
if mobiletestingpage.text == "Our Mobile Testing Process"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#sleep (1)
# Software testing image button
softwaretestingimg = driver.find_element(:class_name, "wp-image-2155")
softwaretestingimg.click
softwaretestingpage = driver.find_element(:class, "headline")
puts softwaretestingpage.text
if softwaretestingpage.text == "We write and execute test cases that make your software or web application better."
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
driver.navigate.back #:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#NEWS
#sleep (1)
#The Future of Testers and SDETs
futureoftesting = driver.find_element(:link_text, "The Future of Testers and SDETs")
futureoftesting.click
futureoftestingpage = driver.find_element(:class, "entry-title")
puts futureoftestingpage.text
if futureoftestingpage.text == "The Future of Testers and SDETs"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#sleep (1)
#Technology Corner Episode 1: Native Application Android with Calabash and Gherkin
techcorner = driver.find_element(:link_text, "Technology Corner Episode 1: Native Application Android with Calabash and Gherkin")
techcorner.click
techcornerpage = driver.find_element(:class, "entry-title")
puts techcornerpage.text
if techcornerpage.text == "Technology Corner Episode 1: Native Application Android with Calabash and Gherkin"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#sleep (1)
#Quality First: The Importance of Software Testers
qualityfirst = driver.find_element(:link_text, "Quality First: The Importance of Software Testers")
qualityfirst.click
qualityfirstpage = driver.find_element(:class, "entry-title")
puts qualityfirstpage.text
if qualityfirstpage.text == "Quality First: The Importance of Software Testers"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#Read More button
#sleep (1)
readmore = driver.find_element(:class, "button-1")
readmore.click
readmorepage = driver.find_element(:class, "title-heading-left")
puts readmorepage.text
if readmorepage.text == "Latest News"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
driver.navigate.back #::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#EVENTS
feb = driver.find_element(:class, "evc_14874984002889")
if feb.text.include?("IT SERVICE MANAGEMENT CONFERENCE & EXHIBITION:")
    puts "PASS"
else
	puts "Fail"
end

mar = driver.find_element(:id, "evc_14908323002869")
if mar.text.include?("WOMEN’S LEADERSHIP SPEAKING EVENT")
    puts "PASS"
else
	puts "Fail"
end

apr11 = driver.find_element(:id, "evc_14912082002870")
if april1.text.include?("QAI QUEST 2017")
    puts "PASS"
else
	puts "Fail"
end
april2 = driver.find_element(:id, "evc_14930190002891")
if april2.text.include?("MOBILE DEV +TEST CONFERENCE")
    puts "PASS"
else
	puts "Fail"
end


may = driver.find_element(:id, "evc_14941422002872")
if may.text.include?("STAREAST A TECHWELL EVENT")
    puts "PASS"
else
	puts "Fail"
end


oct = driver.find_element(:id, "evc_15068412002883")
if oct.text.include?("STARWEST ANAHEIM")
    puts "PASS"
else
	puts "Fail"
end


nov = driver.find_element(:id, "evc_15098652002884")
if nov.text.include?("BETTER SOFTWARE EAST")
    puts "PASS"
else
	puts "Fail"
end

##################################################################
######################End of Events###############################
##################################################################

webinar = driver.find_element(:class, "slides")
webinar.click
webinarpage = driver.find_element(:class, "entry-title")
puts webinarpage.text
if webinarpage.text == "Upcoming IoT Webinar with Jennifer Bonine"
	puts "PASS"
else
	puts "Fail"
end

driver.navigate.back

webinarlinktext = driver.find_element(:link_text, "Upcoming IoT Webinar with Jennifer Bonine")
webinarlinktext.click
webinarpage1 = driver.find_element(:class, "entry-title")
puts webinarpage1.text
if webinarpage1.text == "Upcoming IoT Webinar with Jennifer Bonine"
	puts "PASS"
else
	puts "Fail"
end

driver.navigate.back

commentlinktext = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[6]/div/div[2]/div/div[3]/section/div[1]/div[2]/p[1]/span[3]/a")
commentlinktext.click
webinarpage2 = driver.find_element(:id, "reply-title")
puts webinarpage2.text
if webinarpage2.text == "Leave A Comment"
	puts "PASS"
else
	puts "Fail"
end

driver.navigate.back

oldwebinarlinktext = driver.find_element(:link_text, "tap|QA to Host Webinar January 12th at 2pm “How to implement Continuous Integration featuring iOS")
oldwebinarlinktext.click
oldwebinarpage = driver.find_element(:class, "entry-title")
puts oldwebinarpage.text
if oldwebinarpage.text == "tap|QA to Host Webinar January 12th at 2pm “How to implement Continuous Integration featuring iOS”"
	puts "PASS"
else
	puts "Fail"
end

driver.navigate.back

oldcommentlinktext1 = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[6]/div/div[2]/div/div[3]/section/div[3]/div/p[1]/span[3]/a")
oldcommentlinktext1.click
oldwebinarpage1 = driver.find_element(:id, "reply-title")
puts oldwebinarpage1.text
if webinarpage2.text == "Leave A Comment"
	puts "PASS"
else
	puts "Fail"
end

driver.navigate.back

#############################################################################
##############################Events Page####################################
#############################################################################

seeallevents = driver.find_element(:link_text, "SEE ALL EVENTS")
seeallevents.click

january = driver.find_element(:id, "evc_14842368002868")
if january.text.include?("TCQAA PRESENTATION BY RICK FAULISE")
    puts "All January events are present."
else
	puts "Fail"
end

february1 = driver.find_element(:id, "evc_14874984002889")
if february1.text.include?("IT SERVICE MANAGEMENT CONFERENCE & EXHIBITION:")
    puts "All February events are present."
else
	puts "Fail"
end

march1 = driver.find_element(:id, "evc_14908323002869")
if march1.text.include?("WOMEN’S LEADERSHIP SPEAKING EVENT")
    puts "All March events are present."
else
	puts "Fail"
end


april11 = driver.find_element(:id, "evc_14912082002870")
april22 = driver.find_element(:id, "evc_14930190002891")
if april11.text.include?("QAI QUEST 2017") && april22.text.include?("MOBILE DEV +TEST CONFERENCE")
    puts "All April events are present."
else
	puts "Fail"
end

may1 = driver.find_element(:id, "evc_14941422002872")
if may1.text.include?("STAREAST A TECHWELL EVENT")
    puts "All May events are present."
else
	puts "Fail"
end


october1 = driver.find_element(:id, "evc_15068412002883")
if october1.text.include?("STARWEST ANAHEIM")
    puts "All October events are present."
else
	puts "Fail"
end


november1 = driver.find_element(:id, "evc_15098652002884")
if november1.text.include?("BETTER SOFTWARE EAST")
    puts "All November events are present."
else
	puts "Fail"
end

if january && february1 && march1 && april11 && april22 && may1 && october1 && november1 = "PASS"
	puts "All events for the year are listed!"
else
	puts "Missing some"
end

driver.navigate.back
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#CASE STUDIES
#Multimedia company picture button
#sleep (1)
multimediacompanyimg = driver.find_element(:xpath, ".//*[@id='post-1831']/div/div[6]/div/div[3]/div/div[2]/section/div[1]/div[1]/ul[1]/li/a/img")
multimediacompanyimg.click
multimediacompanypage = driver.find_element(:class, "entry-title")
puts multimediacompanypage.text
if multimediacompanypage.text == "Multimedia Company See Big Results By Nearshoring"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#Multimedia company link under the button
#sleep (1)
multimediacompanylink = driver.find_element(:link_text, "Multimedia Company See Big Results By Nearshoring")
multimediacompanylink.click
multimediacompanypage1 = driver.find_element(:class, "entry-title")
puts multimediacompanypage1.text
if multimediacompanypage1.text == "Multimedia Company See Big Results By Nearshoring"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)

driver.navigate.back

#Read More button
#sleep (1)
readmore2 = driver.find_element(:class, "button-3")
readmore2.click
readmorepage2 = driver.find_element(:class, "entry-title")
puts readmorepage2.text
if readmorepage2.text == "Multimedia Company See Big Results By Nearshoring"
	puts "PASS"
else
	puts "Fail"
end
#sleep (1)
driver.quit