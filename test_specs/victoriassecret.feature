@sandeep
Feature: Victoriassecret

	Scenario: Checkout on victoriasscret.com
		Given I am on "https://www.victoriassecret.com/account/signin" site
		Then I should see "Registered Customers"
		When I fill in "useremail" with "9b8bb2fb@opayq.com"
			And I fill in "userpassword" with "gbtgxageS2pC"
			And I click on ".fab-btn--primary"
			And I click on link id "#bag"
		Then I should see "Checkout"
		When I click on "#addressPanelCommitted .fab-ico--arrow-right-after"
		Then I should see "Billing Address"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "streetAddr1" with "280 Summer St"
			And I fill in "streetAddr3" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#state"
			And I fill in "postalCode" with "02210"
			And I fill in "homePhone" with "6052223256"
			And I click on ".fab-btn--primary"
		Then I should see "Delivery"
		When I click on ".fab-btn--primary"
		Then I should see "Payment"
		When I fill in "ccNumber" with "4111111111111111"
			And I select "10" in "#ccMonth"
			And I select "2024" in "#ccYear"