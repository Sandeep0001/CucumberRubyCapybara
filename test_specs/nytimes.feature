@sandeep
Feature: Nytimes
	
	Scenario: Checkout on nytimes
		Given I am on "http://www.nytimes.com/" site
		When I click on ".login-button"
		Then I should see "Remember me"
		When I fill in "login-email" with "3efbadd0@maskedmails.com"
			And I fill in "login-password" with "tbox0J1guwfV"
			And I click on link id "#login-send-button"
		Then I should see "3efbadd0"
		Given I am on "https://myaccount.nytimes.com/mem/purchase/gateway/checkout.html?OC=20000048020" site
		Then I should see "Your Payment Information"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address" with "280 summer st"
			And I fill in "city" with "Boston"
			And I select "MA" in "#anonymous_element_4"
			And I fill in "zip" with "02210"
			And I fill in "card" with "4111111111111111"
			And I fill in "expMonth" with "10"
			And I fill in "expYear" with "24"
			And I fill in "securityCode" with "458"