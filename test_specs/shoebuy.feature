@sandeep
Feature: Shoebuy

	Scenario: Checkout on shoebuy
		Given I am on "https://www.shoebuy.com/cust/login" site
		Then I should see "Email Address"
		When I fill in "email" with "3ac18ae4@beconfidential.com"
			And I fill in "password" with "ka1hp4YkapvN"
			And I click on ".sign-in-btn"
		Then I should see "John"
		Given I am on items page "https://www.shoebuy.com/cart/cart"
		Then I should see "Total"
		When I click on ".crt-proceed-btn"
		Then I should see "Shipping"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#stateProvince"
			And I fill in "postalCode" with "02210"
			And I fill in "phoneNumber" with "6052223254"
			And I fill in "number" with "4111111111111111"
			And I select "10" from "expMonth"
			And I select "2024" from "expYear"