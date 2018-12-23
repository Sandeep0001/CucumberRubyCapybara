@sandeep
Feature: Famousfootwear

	Scenario: Checkout on famousfootwear
		Given I am on "https://secure.famousfootwear.com/Profiles/Login.aspx?returnurl=%2fProfiles%2fWelcomeDashboard.aspx" site
		Then I should see "Member Sign In"
		When I fill in "ctl00$cphPageMain$CreateAccountOrLogin$LoginControl$UserName" with "7221cc1c@opayq.com"
			And I fill in "ctl00$cphPageMain$CreateAccountOrLogin$LoginControl$password" with "Kkuzoe8wszlV"
			And I click on alt "Sign In"
		Then I should see "John"
		When I click on ".cart-link"
		Then I should see "Shopping Cart"
		When I click on ".btn-default"
		Then I should see "Shipping"
		When I fill in "firstNameInput" with "John"
			And I fill in "lastNameInput" with "Moe"
			And I fill in "addressLine1Input" with "280 summer st"
			And I fill in "addressLine2Input" with "FL 3"
			And I fill in "cityInput" with "Boston"
			And I select "MA" in "#stateInput"
			And I fill in "zipCodeInput" with "02210"
			And I fill in "phoneInput" with "6052224458"
			And I click on ".button"
		Then I should see "Payment Method"
		When I fill in "cardNumberInput" with "4111111111111111"
			And I select "10" in "#cardMonthInput"
			And I select "2024" in "#cardYearInput"
			And I fill in "cardSecurityCodeInput" with "456"
			And I fill in "firstNameInput" with "John"
			And I fill in "lastNameInput" with "Moe"
			And I fill in "addressLine1Input" with "280 summer st"
			And I fill in "addressLine2Input" with "FL 3"
			And I fill in "cityInput" with "Boston"
			And I select "MA" in "#stateInput"
			And I fill in "zipCodeInput" with "02210"
			And I fill in "phoneInput" with "6052224458"