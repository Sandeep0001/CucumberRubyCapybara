@sandeep
Feature: Lowes

	Scenario: Checkout on lowes
		Given I am on "http://www.lowes.com/" site
		When I click on ".ui-event-signin"
		Then I sleep for 5 sec
		Given I switch to iframe "iframe_modal_account"
		When I fill in "Ecom_User_ID" with "4adc998f@opayq.com"
			And I fill in "logonPassword" with "cr9qAzbawkkH"
			And I click on link id "#GoYourAccount"
		Given I switch to default content
		Then I should see "Welcome, Sam"
		When I click on link id "#nav-cart-count"
		Then I should see "Lowe's Of Saugus"
		When I click on ".cart-intro .start-checkout"
		Then I should see "Secure Checkout"
		When I click on link id "#js-add-address-1"
			And I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" from "state"
			And I fill in "zipCode" with "02210"
			And I click on text "Cancel" with ".toggleShipForm"
			And I click on text "Continue Checkout" with ".submitProductDestination"
		Then I should see "Credit Card Information"
			And I fill in "cardNumber" with "4111111111111111"
			And I fill in "sCode" with "454"
			And I select "10" from "cardExpiryMonth"
			And I select "2024" from "cardExpiryYear"
			
			
		
			