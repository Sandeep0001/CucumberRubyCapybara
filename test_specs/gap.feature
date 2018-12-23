@sandeep
Feature: Gap
	
	Scenario: Checkout on gap
		Given I am on "http://www.gap.com/" site
		When I click on ".icon-x"
			And I click on ".icon-arrow-down"
			And I click on ".sign-in-button_for-lg"
		Then I should see "Sign in"
		When I fill in "emailAddress" with "ed27ea92@opayq.com"
			And I fill in "password" with "zvGwd4d8vukN"
			And I click on link id "#signInButton"
		Then I should see "Hello"
		When I click on ".icon-shopping-bag-outer"
		Then I should see "John's Bag"
		When I click on ".shoppingBagCheckoutButton"
		Then I should see "Address"
		When I fill in "shippingAddressFieldGroup4-shippingFirstName" with "John"	
			And I fill in "shippingAddressFieldGroup4-shippingLastName" with "Moe"
			And I fill in "shippingAddressFieldGroup4-shippingAddressLine1" with "280 summer st"
			And I fill in "shippingAddressFieldGroup4-shippingAddressLine2" with "FL 3"
			And I fill in "shippingAddressFieldGroup4-shippingCity" with "Boston"
			And I select "MA" in "#shippingAddressFieldGroup4-shippingState"
			And I fill in "shippingAddressFieldGroup4-shippingPostalCode" with "02210"
			And I fill in "shippingDayPhone" with "6052223256"
			And I click on link id "#shippingContinueButton"
		Then I should see "Payment"
			And I fill in "billingCardNumber" with "4111111111111111"
			And I fill in "billingExpirationMonth" with "10"
			And I fill in "billingExpirationYear" with "2024"
			And I fill in "billingCardCvvNumber" with "456"
			And I check "#billingSameAsShippingCheck" with click
		Then I should see "First name"
		When I fill in "billingAddressFieldGroup4-billingFirstName" with "John"	
			And I fill in "billingAddressFieldGroup4-billingLastName" with "Moe"
			And I fill in "billingAddressFieldGroup4-billingAddressLine1" with "280 summer st"
			And I fill in "billingAddressFieldGroup4-billingAddressLine2" with "FL 3"
			And I fill in "billingAddressFieldGroup4-billingCity" with "Boston"
			And I select "MA" in "#billingAddressFieldGroup4-billingState"
			And I fill in "billingAddressFieldGroup4-billingPostalCode" with "02210"
			And I fill in "billingAddressFieldGroup4-billingDayPhone" with "6052223256"
			
		
		
		