@sandeep
Feature: Shutterfly

	Scenario: Checkout on shutterfly
		Given I am on "https://www.shutterfly.com/signin/viewSignin.sfly?" site
		Then I should see "Forgot password?"
		When I fill in "userName" with "e344aa4e@opayq.com"
			And I fill in "password" with "7sz5uQfuyM"
			And I click on link id "#signInButton"
		Then I should see "Hi"
		When I click on ".sf3-icon-cart-lg"
		Then I should see "Shopping Cart"
		When I click on ".block .btn-primary"
		Then I should see "Shipping information"
		When I check "sameAsShipping"
			And I click on text "Edit" with ".list-inline-right"
		Then I should see "Cancel"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "city" with "Boston"
			And I fill in "state" with "MA"
			And I fill in "postalCode" with "02210"
			And I fill in "cardholderName" with "John Moe"
			And I fill in "cardNumber" with "4111111111111111"
			And I fill in "monthExpires" with "10"
			And I fill in "yearExpires" with "2024"
			And I fill in "telephoneNumber" with "6052223256"
		