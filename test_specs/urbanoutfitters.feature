@sandeep
Feature: Urbanoutfitters

	Scenario: Checkout on urbanoutfitters
		Given I am on "http://www.urbanoutfitters.com/urban/index.jsp?cm_sp=SITE_HEADER-_-HOME-_-index.jsp" site
		When I click on link id "#utility_signin"
		When I fill in "checkoutEmail" with "c067b6d3@opayq.com"
			And I fill in "checkoutPassword" with "qzcjAtmb61lC"
			And I click on value "Sign In"
			And I click on link id "#bagTextLink"
		Then I sleep for 5 sec
		Then I should see "SHOPPING"
		When I click on ".checkout-primary-button"
		Then I should see "Edit Your Shipping Address"
		When I click on ".checkout-address-edit"
		Then I should see "First Name"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "19" in "#selectedStateText"
			And I fill in "postalCode" with "02210"
			And I fill in "phoneNumber" with "6052223256"
			And I click on ".checkout-cancel-button"
		Then I should not see "First Name"
		When I click on ".checkout-sidebar .checkout-primary-button"
		Then I should see "Choose Your Ship Method and Options"
		When I click on ".inline .checkout-primary-button"
		Then I should see "Card Number"
		When I fill in "ccNumber" with "41111111111111"
			And I select "10" in "#creditCardMonth"
			And I select "8" in "#creditCardYear"
			And I fill in "creditCardSecurityCode" with "458"
		