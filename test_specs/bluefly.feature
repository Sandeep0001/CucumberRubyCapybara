@sandeep
Feature: Bluefly

	Scenario: Checkout on bluefly
		Given I am on "http://www.bluefly.com/" site
		Then I sleep for 5 sec
		When I click on text "Continue Without 10% Off" with ".bx-button"
			And I click on href "/user/login"
		Then I should see "SIGN IN"
		When I fill in "email" with "ae34415a@opayq.com"
			And I fill in "password" with "u1xFbfce4zrW"
			And I click on ".mz-button-large"
		Then I should see "JOHN"
		Given I am on items page "https://www.bluefly.com/cart"
		Then I should see "Remove"
		When I click on link id "#cart-checkout"
		Then I should see "PAYMENT CARD"
		When I fill in "credit-card-name" with "John Moe"
			And I fill in "credit-card-number" with "4111111111111111"
			And I select "10" in "#mz-payment-expiration-month"
		Given I set id for ".bf-payment-expiration-year-label select"
		When I select "2024" in "#blurclick"
			And I fill in "security-code" with "465"
			And I fill in "firstname" with "John"
			And I fill in "lastname" with "Moe"
			And I fill in "address-line-1" with "280 summer st"
			And I fill in "address-line-2" with "FL 3"
		Given I set id1 for ".bf-shipping-state select"
			And I select "MA" in "#blurclick1"
			And I fill in "city" with "Boston"
			And I fill in "postal-code" with "02210"
			And I fill in "shippingphone" with "6052223256"