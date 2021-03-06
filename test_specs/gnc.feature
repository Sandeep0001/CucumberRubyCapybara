@sandeep
Feature: Gnc

	Scenario: Checkout on gnc
		Given I am on "https://www.gnc.com/" site
		When I click on ".user-account"
		Then I should see "RETURNING CUSTOMERS"
		When I fill in "emailId" with "6beb004f@opayq.com"
			And I fill in "passwd" with "ovszjor8muQD"
			And I click on ".signIn"
		Then I should see "John"
		Given I am on items page "http://www.gnc.com/cart/index.jsp?an_action=viewCart"
		Then I should see "SHOPPING CART"
		When I click on ".checkout"
		Then I should see "Required Field"
		When I select "VC" in "#ccType"
			And I fill in "cc-number" with "4111111111111111"
			And I select "10" in "#cardExpDateMo"
			And I select "2024" in "#cardExpDateYr"
			And I fill in "ccPin" with "456"
			And I click on link id "#crumb-address"
		Then I sleep for 5 sec
		When I click on link id "#need_close"
		Then I should see "BILLING ADDRESS"
		When I fill in "billingAddress.address.firstName" with "John"
			And I fill in "billingAddress.address.lastName" with "Moe"
			And I fill in "billingAddress.address.address1" with "280 summer st"
			And I fill in "billingAddress.address.address2" with "FL 3"
			And I fill in "billingAddress.address.city" with "Boston"
		Given I set id for ".state select"
		When I select "MA" in "#blurclick"
			And I fill in "billingAddress.address.postalCode" with "02210"
			And I fill in "billing-phone-areacode" with "605"
			And I fill in "billing-phone-exchange" with "228"
			And I fill in "billing-phone-number" with "4458"
			And I click on link id "#shipOption2"
			And I fill in "shippingAddress.address.firstName" with "John"
			And I fill in "shippingAddress.address.lastName" with "Moe"
			And I fill in "shippingAddress.address.address1" with "280 summer st"
			And I fill in "shippingAddress.address.address2" with "FL 3"
			And I fill in "shippingAddress.address.city" with "Boston"
			And I fill in "shippingAddress.address.postalCode" with "02210"
			And I fill in "shipping-phone-areacode" with "605"
			And I fill in "shipping-phone-exchange" with "228"
			And I fill in "shipping-phone-number" with "4458"		
		