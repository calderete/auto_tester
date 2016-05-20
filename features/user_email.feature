Feature: Send Reminders of Upcoming Shoe Releases to Users Who Want Them
	A customer can submit their email if the wish to have email reminders of
	shoe releases

	Scenario Outline: Subscribers will get monthly reminders
		Given I am on the Shoe Store's home page
		Then There will be a form field to subscribe to monthly releases
		When I enter "<email address>" into the form feild
		And I click on the button to submit the email address
		Then a message will appear
		And the message will be tailored to the user

			Examples:
				| email address |
				| kittens@mittens.com |
				| codprestige10@gmail.com |
				| ninja@panda.com |
				| dragon@drogon.com |
				| red@panda.com |
				| robert@thebruce.com |