@sandeep
Feature: Choxi

	Scenario: Checkout on choxi
		Given I am on "https://www.choxi.com/" site
		When I click on ".close"
			And I click on ".nav-menu .account"
		Then I should see "Log In"
		When I fill in "email_address" with "d04fc1b0@opayq.com"
			And I fill in "password" with "nzp3pzvhedEU"
			And I click on ".btn-default"
			And I click on ".cart"
		Then I should see "Shopping Cart"
		When I click on ".checkout-btn"
		Then I should see "BILLING ADDRESS"
		When I fill in "payment_billingAddress_address_firstName" with "John"
			And I fill in "payment_billingAddress_address_lastName" with "Moe"
			And I fill in "payment_billingAddress_address_street" with "280 summer st"
			And I fill in "payment_billingAddress_address_streetCont" with "FL 3"
			And I fill in "payment_billingAddress_address_postalCode" with "02210"
			And I fill in "payment_billingAddress_address_city" with "Boston"
			And I select "MA" in "#payment_billingAddress_address_state"
			And I fill in "payment_billingAddress_address_phoneNumber" with "6052223256"
			And I uncheck "payment_shipToBillingAddress"
			And I fill in "payment_shippingAddress_address_lastName" with "Moe"
			And I fill in "payment_shippingAddress_address_street" with "280 summer st"
			And I fill in "payment_shippingAddress_address_streetCont" with "FL 3"
			And I fill in "payment_shippingAddress_address_postalCode" with "02210"
			And I fill in "payment_shippingAddress_address_city" with "Boston"
			And I select "MA" in "#payment_shippingAddress_address_state"
			And I fill in "payment_newCreditCard_number" with "4111111111111111"
			And I select "10" in "#payment_newCreditCard_expiryMonth"
			And I select "2024" in "#payment_newCreditCard_expiryYear"
			And I fill in "payment_newCreditCard_cvv" with "458"