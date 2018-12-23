@sandeep
Feature: Hobby Lobby

	Scenario: Checkout on hobbylobby
		Given I am on "https://www.hobbylobby.com/login" site
		Then I should see "I have a Hobby Lobby account"
		When I fill in "j_username" with "9fb354bb@opayq.com"
			And I fill in "j_password" with "h8Ubjjrfw6bT"
			And I click on ".gtm_login"
		Then I should see "Hi"
		When I click on ".cart-link"
		Then I should see "Cart"
			And I clear cart if I see "Remove" and I click on ".gtm_cart_remove" and I dont do anything if I see "Your Shopping Cart Is Empty"
		Given I am on items page "http://www.hobbylobby.com/Art-Supplies/Brushes/Bob-Ross-%234-Floral-Fan/p/6504-PO0639"
		Then I should see "EACH"
		When I click on link id "#addToCartButton"
			And I click on ".cart-link"
			And I click on ".doCheckoutBut"
		Then I should see "Shipping Address"
		When I click on ".change"
			And I click on ".edit"
		Then I should see "Edit Your Shipping Address"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "line1" with "280 summer st"
			And I fill in "line2" with "FL 3"
			And I fill in "townCity" with "Boston"
			And I select "US-MA" in "#address.region"
			And I fill in "postcode" with "02210"
			And I fill in "phoneNumber" with "6052223245"
			And I click on ".change_address_button"
		Then I should see "Choose Your Shipping Address"
		When I click on ".continue-address"
		Then I should see "Select a Billing Address"
		When I click on ".continue-address"
		Then I should see "Credit Card"
		When I fill in "merchant_defined_data3" with "John Moe"
			And I fill in "card_number" with "4111111111111111"
			And I select "10" in "#expiryMonth"
			And I select "2024" in "#expiryYear"
			And I fill in "card_cvn" with "458"