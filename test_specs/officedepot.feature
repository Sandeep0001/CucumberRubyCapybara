@sandeep
Feature: Officedepot

	Scenario: Checkout on officedepot
		Given I am on "http://www.officedepot.com/" site
		When I click on link id "#modalAccountLoginID"
		Then I should see "Log in"
		When I fill in "loginName" with "877f46d1@opayq.com"
			And I fill in "password" with "px98C,ou'B"
			And I click on ".formBottom .rounded"
		Then I should see "Hi"
		When I click on ".cart_hicon"
		Then I should see "Shopping Cart"
		When I click on ".fright .checkout"
		Then I should see "Payment Information"
		When I fill in "paymentFormInfo.creditCardNumber" with "4111111111111111"
			And I select "10" in "paymentFormInfo.creditCardExpMonth"
			And I select "24" in "paymentFormInfo.creditCardExpYear"
			And I fill in "paymentFormInfo.creditCardCvv" with "454"
			And I click on href "/checkout/checkoutProcess.do?intendedStep=ship"
		Then I should see "Choose a shipping address"
		When I click on ".address_edit_button"
		Then I should see "Edit Shipping Address"
		When I fill in "firstName-0" with "John"
			And I fill in "lastName-0" with "Moe"
			And I fill in "address1-0" with "280 summer st"
			And I fill in "address2-0" with "FL 3"
			And I fill in "postalCode1-0" with "02210"
			And I fill in "phoneNumber1-0" with "605"
			And I fill in "phoneNumber2-0" with "325"
			And I fill in "phoneNumber3-0" with "3245"

		