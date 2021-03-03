Scenario: Visual checks
Given I am on the main application page
When I click on element located `By.xpath((//a[@href='/login'])[1])`
When I enter `${registeredUserEmail}` in field located `By.xpath(//input[@name='user'])`
When I wait until element located `By.xpath(//*[@id='password'])` disappears
When I click on element located `By.xpath(//input[@id='login'])`
When I enter `${registeredUserPassword}` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait `PT30S` with `PT10S` polling until element located `By.xpath(//*[@class='home-sticky-container'])` becomes ENABLED
When I reset context
When I click on element located `By.xpath(//button[@data-test-id='header-member-menu-button'])`
When I ESTABLISH baseline with `base_1`
When I COMPARE_AGAINST baseline with `base_1`

When I check main page
When I check team members page
When I check create board page

Scenario: UI controls validated
When I refresh the page

When I find = '1' elements by By.xpath((//div[@id='header']/div)[2]/button[1]) and for each element do
|step                                                                         |
|When I click on element located `By.xpath((//div[@id='header']/div)[2]/button[1])`|
|Then element located `By.xpath(//section)` exists for `PT3S` duration       |

When I find = '1' elements by By.xpath((//div[@id='header']/div)[2]/button[2]) and for each element do
|step                                                                         |
|When I click on element located `By.xpath((//div[@id='header']/div)[2]/button[2])`|
|Then element located `By.xpath(//section)` exists for `PT3S` duration       |


