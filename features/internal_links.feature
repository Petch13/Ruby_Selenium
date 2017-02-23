Feature: Internal Links
Background:
	Given We have navigated to the Knowledge Center page

Scenario:
  When We click on the Automated Testing link
  Then The browser will navigate to the Automated Testing page
  And The heading text is Automated Testing

Scenario:
  When We click on the Technology Corner link
  Then The browser will navigate to the Technology Corner page
  And The heading text is Technology Corner Episode 1: Native Application Android with Calabash and Gherkin

