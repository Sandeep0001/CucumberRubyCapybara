@sandeep
Feature: Landsend

	Scenario: Checkout on landsend
		Given I am on "http://www.landsend.com/" site
		When I click on ".close"
			And I click on link id "#sign-in"
		Then I should see "SIGN IN"
		When I fill in "emailAddress-login" with "af8bdf91@opayq.com"
			And I fill in "password-login" with "06smBbyvvweG"
			And I click on ".btn-block-phone"
		Then I should see "HI"
		When I click on ".shopping-bag-icon"
		Then I should see "SHOPPING BAG"
		When I click on ".btn-lg"
		Then I should see "SECURE CHECKOUT"
		When I fill in "password-control" with "06smBbyvvweG"
			And I click on ".ng-valid-email .btn-primary"
		Then I should see "SHIPPING"
		When I click on text "Edit" with ".text-link"
		Then I should see "First Name"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "addressLine1" with "280 Summer St"
			And I fill in "addressLine2" with "FL 3"
			And I fill in "addressCity" with "Boston"
			And I select "MA" in "#state-control"
			And I fill in "postalCode" with "02210"
			And I click on ".ladda-label"
		Then I should see "Address Verification"
			And I click on ".ladda-button"
		Then I should see "Card Number"
		When I fill in "card-number-control" with "4111111111111111"
			And I select "10" in "#expiration-month-control"
			And I select "number:2024" in "#expiration-year-control"
			
		
		