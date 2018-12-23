@sandeep
Feature: Etsy

	Scenario: Checkout on etsy
		Given I am on "https://www.etsy.com/" site
		When I click on ".select-signin"
		Then I should see "Stay signed in"
		When I fill in "username" with "b67f2f29@blurme.net"
			And I fill in "password" with "tXvn1gstz3yW"
			And I click on link id "#signin-button"
		Then I should see "You"
		When I click on link id "#gnav-account-cart-description"
		Then I should see "cart"
			And I clear cart if I see "Remove" and I click on ".pr-xs-1" and I dont do anything if I see "Your cart is empty."
		Given I am on items page "https://www.etsy.com/in-en/listing/230001634/hair-bows-set-of-12-hair-bows-hairbows"
		When I click on ".btn-transaction"
		Then I should see "cart"
		When I click on ".proceed-to-checkout"
		Then I should see "shipping address"
		When I click on ".ss-plus"
		Then I should see "Add a new address"
		When I select "209" in "address-country"
			And I fill in "address[name]" with "John Cal"
			And I fill in "address[first_line]" with "280 summer st"
			And I fill in "address[second_line]" with "FL 3"
			And I fill in "address[zip]" with "02210"
			And I fill in "address[city]" with "Boston"
			And I select "MA" in "#address-state-field"
			And I press "Cancel"
			And I press "Ship here"
		Then I should see "Enter your payment details"
			And I ignore onbeforeunload pop-ups
		When I fill in "card[number]" with "4111111111111111"
			And I select "6" from "cc-exp-mon"
			And I select "2024" from "cc-exp-year"
			And I fill in "card[ccv]" with "454"
			And I fill in "card[name]" with "John Moe"
			
		