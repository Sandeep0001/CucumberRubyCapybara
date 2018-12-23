@sandeep
Feature: Snapfish

	Scenario: Checkout on snapfish
		Given I am on "https://www.snapfish.com/" site
		Then I sleep for 5 sec
		Given I am on "https://www.snapfish.com/" site
		When I click on link id "#globalHeaderSignInRegister"
		Then I should see "Sign me"
		When I fill in "EmailAddress" with "852f8734@opayq.com"
			And I fill in "Password" with "nqyfyzdbKa6C"
			And I click on link id "#loginsubmit"
		Then I should see "John"
		Given I am on items page "https://www.snapfish.com/cart/shoppingcart"
		Then I should see "Your Cart"
		When I click on link id "#edit_shipping"
		Then I should see "FIRST NAME"
		When I fill in "firstname" with "John"
			And I fill in "lastname" with "Moe"
			And I fill in "streetmailing" with "280 summer st"
			And I fill in "streetmailing2" with "FL 3"
			And I fill in "citymailing" with "Boston"
			And I select "MA" in "#statemailing"
			And I fill in "zipmailing" with "02210"
			And I click on ".close-overlay-icon"
		Then I should see "Your Cart"
		When I click on link id "#cart_checkout_top"
		Then I should see "CARD HOLDER'S NAME"
		When I fill in "ccholdername" with "John Moe"
		Given I switch to iframe "braintree-hosted-field-number"
		When I fill in "credit-card-number" with "4111111111111111"
		Given I switch to default content
		Given I switch to iframe "braintree-hosted-field-expirationMonth"
		When I fill in "expiration-month" with "10"
		Given I switch to default content
		Given I switch to iframe "braintree-hosted-field-expirationYear"
		When I fill in "expiration-year" with "2024"
		Given I switch to default content
		Given I switch to iframe "braintree-hosted-field-cvv"
		When I fill in "cvv" with "465"
		Given I switch to default content
		When I fill in "streetbilling" with "280 summer st"
			And I fill in "streetbilling2" with "FL 3"
			And I fill in "citybilling" with "Boston"
			And I select "MA" in "#statebilling"
			And I fill in "zipbilling" with "02210"
			And I fill in "phonenumber1billing" with "6052223245"