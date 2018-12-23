@sandeep
Feature: Walmart
	
	Scenario: Checkout on walmart
		Given I am on "http://www.walmart.com/account/login" site
		Then I should see "Sign in"
		When I fill in "login-username" with "a03e4817@opayq.com"
			And I fill in "login-password" with "q3zzJmjobffM"
			And I click on ".login-sign-in-btn"
		Then I should see "Hello,"
		When I click on ".wmicon-cart"
		Then I should see "Your cart"
		When I click on link id "#CartChkOutBtn"
		Then I should see "Showing options for"
		When I click on ".js-fulfillment-opts-continue"
		Then I should see "Choose shipping address"
		When I click on ".wmicon-add"
		Then I should see "Set as my preferred address"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "shippingPhone" with "6052223562"
			And I fill in "addressLineOne" with "280 summer st"
			And I fill in "addressLineTwo" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#COAC2ShpAddrState"
			And I fill in "postalCode" with "02210"
			And I click on ".js-cancel-address-form"
			And I click on ".js-shipping-address-continue"
		Then I should see "Card information"
		When I fill in "firstName" with "Thomas"
			And I fill in "lastName" with "cal"
			And I fill in "number" with "4111111111111111"
			And I select "10" in "#COAC3PayCardExpMnth"
			And I select "2024" in "#COAC3PayCardYear"
			And I fill in "cvv" with "454"
			And I fill in "creditCardPhone" with "6052451526"
			And I click on ".same-as-shipping-address"
			And I fill in "addressLineOne" with "280 summer st"
			And I fill in "addressLineTwo" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#COAC3PayBillAddrState"
			And I fill in "postalCode" with "02210"
			
			
			
			
		