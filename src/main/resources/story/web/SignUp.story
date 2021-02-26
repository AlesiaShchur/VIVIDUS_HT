


Scenario: Sign Up

Meta:
    @layout desktop
    
Given I am on the main application page
When I click on element located `By.xpath(//*[@id="hero"]//input[@name="email"])`
When I enter `<email>` in field located `By.xpath(//*[@id="hero"]//input[@name="email"])`
When I click on all elements located `By.xpath(//button[@data-analytics-button='greenSignupHeroButton'])`

When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<displayName>` in field located `By.xpath(//*[@id='displayName'])`
When I enter `#{generate(regexify '[a-z]{3}[A-Z]{2}[1-9]{3}[!@#$%^&]{2}')}` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//button[@id="signup-submit"])`
Then the text 'Welcome,<displayName>' exists

When I enter `BestTeam` in field located `By.xpath(//*[@id='moonshotCreateTeam'])`
When I select `Other` in dropdown located `By.xpath(//div[@class='css-196czu8'])`
When I enter `trinidad@mailinator.com` in field located `By.xpath(//input[@data-test-id='add-members-input'])`
When I click on element located `By.xpath(//button[text()='Continue'])`
Then the text 'Try Business Class for 30 days' exists

When I click on element located `By.xpath(//button[text()='Start without Business Class'])`
When I click on element located `By.xpath(//button[text()="Let's go!"])`
Then the text 'GETTING STARTED' exists


Lifecycle:

Examples:
|email                  |displayName |
|cool11@mailinator.com  |Trinidad    |



