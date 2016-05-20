Feature: Display New Releases Each Month
	As a customer of the shoe store I want to be able to visit a link
	That will display the monthly releases

Background:
	Given I am on the Shoe Store's home page

	Scenario Outline: Display a Month's New Releases When a User Clicks on It
		Given I click on "<month>"
		Then I should see shoes displayed on the page
		And I should see a name for each shoe
		And I should see the msrp for each shoe
		And Each price should be a valid value
		And I should see a blurb for each shoe
		And I should see an image for each shoe

		Examples:
			| month |
			| January |
			| February |
			| March |
			| April | 
			| May |
			| June |
			| July |
			| August |
			| September |
			| October |
			| November |
			| December |

			
			