

Scenario: LogIn as a registered user

Meta:
    @layout desktop
    @testId 123
    
Given I am on the main application page
When I click on element located `By.xpath(//nav[@data-track-group='Global Header']//div/a[@href='/login'])`
When I enter `mailuser@mailinator.com` in field located `By.xpath(//input[@inputmode="email"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `Password!eva@` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//button[@id="login-submit"])`
Then the text 'Trello' exists












