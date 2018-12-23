@sandeep
Feature: Saksfifthavenue
	
	Scenario: Checkout on saksfifthavenue
		Given I am on "https://www.saksfifthavenue.com/account/login.jsp?bmUID=litOHvF" site
		Then I sleep for 5 sec
		Given I set name for "#generic-modal iframe" iframe
		Given I switch to iframe "blurFrame"
		When I click on link id "#close-button"
		Given I switch to default content
		Then I should see "SIGN IN"
		When I click on name "ORDER<>zip"
			And I fill in "LOGIN<>userid" with "01bef768@opayq.com"
			And I fill in "LOGIN<>password" with "ma9ze0ZhgmlN"
			And I click on name "signIn"
			And I click on ".shopping-bag"
		Then I should see "Estimated Total"
		When I click on ".footer .transactional"
		Then I should see "SAKS BAG"
		When I click on link id "#jsStartCheckout"
		Then I should see "Welcome"
		When I fill in "LOGIN<>userid" with "01bef768@opayq.com"
			And I fill in "LOGIN<>password" with "ma9ze0ZhgmlN"
			And I click on link id "#jsQuickCheckout"
		Then I should see "Payment"
		When I select "MC" in "#payCC"
			And I fill in "payCCNum" with "41111111111111"
			And I fill in "payCCName" with "John Moe"
			And I select "10" in "#ccMonth"
			And I select "2024" in "#ccYear"
			And I fill in "payCCV" with "456"
			And I click on link id "#tab-shipbill"
		Then I should see "Shipping Address"
		When I click on ".shipping-address-summary .action-link-text"
		Then I should see "Add/Edit Shipping Address"
		When I fill in "shipFirst" with "John"
			And I fill in "shipLast" with "Moe"
			And I fill in "shipAddress1" with "280 summer st"
			And I fill in "shipAddress2" with "FL 3"
			And I fill in "shipCity" with "Boston"
			And I select "MA" in "#shipState"
			And I fill in "shipZip" with "02210"
			And I fill in "shipPhone" with "6052223245"
			And I click on ".checkout-cancel"
			And I click on ".billing-address-summary .action-link-text"
		Then I should see "Add/Edit Billing Address"
		When I fill in "BILL_TO_ADDRESS<>firstName" with "John"
			And I fill in "BILL_TO_ADDRESS<>lastName" with "Moe"
			And I fill in "BILL_TO_ADDRESS<>address1" with "280 summer st"
			And I fill in "BILL_TO_ADDRESS<>address2" with "FL 3"
			And I fill in "BILL_TO_ADDRESS<>city" with "Boston"
			And I select "MA" in "#jsBillingStateDropDown"
			And I fill in "BILL_TO_ADDRESS<>postal" with "02210"
			And I fill in "BILL_TO_ADDRESS<>phone" with "6052223245"
			
		