@sandeep
Feature: Fossil

	Scenario: Checkoutt on fossil
		Given I am on "https://www.fossil.com/us/en/sign-in.html" site
		Then I should see "EMAIL"
		When I fill in "signInEmail" with "5e4c33b1@opayq.com"
			And I fill in "signInPwd" with "rq2Pktdbdh6K"
			And I click on "#signin-form-page .btn-primary"
		Then I should see "WELCOME BACK"
		When I click on ".shopping-bag"
		Then I should see "SHOPPING"
		When I click on ".btn-checkout"
		Then I should see "SHIPPING"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#shipping-form-state"
			And I fill in "postalCode" with "02210"
			And I fill in "phone1" with "6052223214"
			And I click on ".btn-checkout"
		Then I should see "HOW DO YOU WANT TO PAY FOR THESE ITEMS?"
		When I fill in "cc_numbers" with "41111111111111"
			And I select "10" in "#cc_expr_month"
			And I select "2024" in "#cc_expr_year"
			And I fill in "cc_ccv" with "458"