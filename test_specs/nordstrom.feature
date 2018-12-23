@sandeep
Feature: Nordstrom

	Scenario: Checkout on nordstrom
		Given I am on "http://shop.nordstrom.com/" site
		When I click on text "Sign In" with ".nui-wcmlink"
		Then I should see "Sign in to your Nordstrom"
		When I fill in "ctl00_mainContentPlaceHolder_signIn_email" with "0d6ca41c@opayq.com"
			And I fill in "ctl00_mainContentPlaceHolder_signIn_password" with "u&x2vzatBK"
			And I click on link id "#ctl00_mainContentPlaceHolder_signIn_enterButton"
		Then I should see "Hello"
		When I click on ".easy-checkout-link"
		Then I should see "Shipping Address"
		When I click on "#shipping-address .edit"
		Then I should see "SHIP TO"
		When I click on link id "#selectItemLevelSavedAddress"
		Then I should see "First Name"
		When I fill in "shippingAddr-first-name" with "John"
			And I fill in "shippingAddr-last-name" with "Moe"
			And I fill in "shippingAddr-address-1" with "280 summer st"
			And I fill in "shippingAddr-address-2" with "FL 3"
			And I fill in "shippingAddr-city" with "Boston"
			And I select "21" in "shippingAddr-state"
			And I fill in "shippingAddr-zip-code" with "02210"
			And I fill in "shippingAddr-phone-number" with "6052223256"
			And I click on ".continue"
		Then I should see "CREDIT OR DEBIT CARD"
		When I fill in "card-number" with "4111111111111111"
			And I select "10" from "credit-month"
			And I select "8" from "credit-year"
			And I fill in "credit-ccv" with "465"
			