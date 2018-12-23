@sandeep
Feature: 511tactical

	Scenario: Checkout on 511tactical
		Given I am on "https://www.511tactical.com/" site
		When I click on link id "#nl-xbtn"
		When I click on href "https://www.511tactical.com/customer/account/login/referer/aHR0cDovL3d3dy41MTF0YWN0aWNhbC5jb20v/"
		Then I should see "REGISTERED CUSTOMERS"
		When I fill in "login[username]" with "6f1e025e@opayq.com"
			And I fill in "login[password]" with "gU1kptdd1saQ"
			And I click on link id "#send2"
		Then I should see "JOHN"
		Given I am on items page "http://www.511tactical.com/checkout/cart/"
		Then I should see "MY CART"
		When I click on ".btn-proceed-checkout"
		Then I should see "BILLING ADDRESS"
		When I fill in "billing[firstname]" with "John"
			And I fill in "billing[lastname]" with "Moe"
			And I fill in "billing:street1" with "280 summer st"
			And I fill in "billing:street2" with "FL 3"
			And I fill in "billing[city]" with "Boston"
			And I select "32" in ".validate-select"
			And I fill in "billing[postcode]" with "02210"
			And I fill in "billing[telephone]" with "6052224458"
			And I click on ".primary"
		Then I should see "UPS Ground"
		When I click on "#opc-shipping a"
		Then I should see "USE BILLING ADDRESS AS SHIPPING ADDRESS"
		When I fill in "shipping[firstname]" with "John"
			And I fill in "shipping[lastname]" with "Moe"
			And I fill in "shipping:street1" with "280 summer st"
			And I fill in "shipping:street2" with "FL 3"
			And I fill in "shipping[city]" with "Boston"
			And I select "32" in ".validate-select"
			And I fill in "shipping[postcode]" with "02210"
			And I fill in "shipping[telephone]" with "6052224458"
			And I click on ".primary"
		Then I should see "UPS Ground"
		When I click on js "#s_method_customflatrates_UPSGround"
			And I click on ".primary"
		Then I should see "PAYMENT METHOD"
		When I click on js "#p_method_sfc_cybersource"
			And I select "VI" in "#sfc_cybersource_cc_type"
			And I fill in "sfc_cybersource_cc_number" with "4111111111111111"
			And I select "10" in "#sfc_cybersource_expiration"
			And I select "2024" in "#sfc_cybersource_expiration_yr"
			And I fill in "sfc_cybersource_cc_cid" with "456"
		