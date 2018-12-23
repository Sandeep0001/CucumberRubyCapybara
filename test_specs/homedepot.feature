@sandeep
Feature: Homedepot
	
	Scenario: Checkout on homedepot
		Given I am on "http://www.homedepot.com/" site
		When I click on link id "#headerMyAccount"
		Then I should see "Sign in to your account"
		When I click on ".headerMyAccount__authText .dual-sign-in-pop-up"
		Then I should see "My Account Sign In"
		When I fill in "logonId" with "ada9252f@opayq.com"
			And I fill in "logonPassword" with "Ft_eeko4vS"
			And I click on link id "#signIn"
		Then I should see "hshjd"
			And I click on link id "#headerCart"
		Then I should see "Shopping Cart"
		When I click on link id "#checkout-btn"
		Then I should see "Shipping"
			And I sleep for 5 sec
		When I click on ".add-address-link"
		Then I should see "Add Address"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "cal"
			And I fill in "phone" with "6052223214"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "zipcode" with "0221"
			And I click on ".md-cancel"
			And I click on ".p-right-normal .sliderNextButton"
		Then I should see "Payment & Billing"
		When I fill in "cardNumber" with "4111111111111111"
			And I select "06" from "expiration-month"
			And I select "2024" from "expiration-year"
			And I fill in "cvv" with "454"
			