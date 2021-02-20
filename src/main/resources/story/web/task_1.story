Scenario: Sign Up
Given I am on the main application page

When I click on element located `By.xpath((//a[@href='/signup'])[1])`
When I wait until element located `By.xpath(//input[@type='email'])` appears
When I enter `<email>` in field located `By.xpath(//input[@type='email'])`
When I click on element located `By.xpath(//input[@id='signup-submit'])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<full_name>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[text() = 'John Doe'])` appears
When I change context to element located `By.xpath(//*[text() = 'John Doe'])`
Then the text 'John Doe' exists
Examples:
|email|full_name|password|
|#{generate(regexify '[a-z0-9]{3,5}\@[a-z]{5}\.[a-z]{2,5}')}|John Doe|pass1234|
|#{generate(regexify '[a-z0-9]{3,5}\@[a-z]{5}\.[a-z]{2,5}')}|John Doe|pass1234|
|#{generate(regexify '[a-z0-9]{3,5}\@[a-z]{5}\.[a-z]{2,5}')}|John Doe|pass1234|


