

Scenario: Create a new board

Meta:
   @layout desctop
   @testId 123
   
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=096efcb94483e841a3828b534ac4902c&token=d562a422162979529a2eb216a442c7b412e3ae96c8a2c794644fbbe496ff2d93&name={Board777}'
Then the response code is equal to '200'
