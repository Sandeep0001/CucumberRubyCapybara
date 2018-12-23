@sandeep
Feature: LLBean

	Scenario: Checkout on llbean
		Given I am on "http://www.llbean.com/" site
		When I click on ".login-trigger"
		Then I sleep for 5 sec
		Given I switch to iframe "loginLayer"
		When I fill in "logonId" with "8950dd94@opayq.com"
			And I fill in "logonPassword" with "vlfhbvkFgr2N"
			And I click on link id "#loginButton"
		Given I switch to default content
		Then I should see "Welcome"
		When I click on ".icon-shopping-bag"
		Then I should see "Shopping"
			And I clear cart if I see "Remove Item" and I click on ".wlsb_removeItem" and I dont do anything if I see "Your Shopping Bag is empty"
		Given I am on items page "http://www.llbean.com/llb/shop/87904?feat=890-CL1&page=gopro-lcd-touch-bacpac"
		When I click on ".item-callto-action .btn-orange"
		Then I should see "Added to Your Shopping Bag"
		When I click on ".checkout-btn"
		Then I should see "Shopping"
		When I click on ".sb_continueToCheckoutTop"
		Then I should see "Secure Checkout"
		When I click on text "Billing Address" with ".heading" 
		Then I should see "Your Billing Address"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "zipCode" with "02210"
			And I fill in "city" with "Boston"
			And I select "MA" from "state"
			And I fill in "phone1" with "6052221256"
			And I click on ".cancelLink"
			And I click on link id "#popChangesContinue"
		Then I should see "Your Payment Method"
		When I fill in "creditCardNum" with "4111111111111111"
			And I select "10" from "ccExpMonth"
			And I select "2024" from "ccExpYear"