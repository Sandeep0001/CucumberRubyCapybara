@sandeep
Feature: Dickssportinggoods

	Scenario: Checkout on dickssportinggoods
		Given I am on "https://www.dickssportinggoods.com/checkout/index.jsp?process=login&ab=Header_MyAccount" site
		Then I should see "Returning Customers"
		When I fill in "emailId" with "15453803@opayq.com"
			And I fill in "passwd" with "ahvsdy5621"
		Given I am on items page "http://www.dickssportinggoods.com/product/index.jsp?productId=11376349&ab=TopNav_Exercise_Weights_SandBags&cp=4413986.4417790&categoryId=15405796"
		Then I should see "Usually ships"
		When I click on ".add-cart-button"
		Then I should see "Your Cart"
		When I click on ".checkout"
		Then I should see "Billing Address"
		When I click on ".mShip-checkbox"
			And I fill in "billingAddress.address.firstName" with "John"
			And I fill in "billingAddress.address.lastName" with "Moe"
			And I fill in "billingAddress.address.address1" with "280 summer st"
			And I fill in "billingAddress.address.address2" with "FL 3"
			And I fill in "billingAddress.address.city" with "Boston"
		Given I set id for ".state select"
		When I select "MA" in "#blurclick"
			And I fill in "billingAddress.address.postalCode" with "02210"
			And I fill in "billingAddress.phone" with "6052223255"
			And I fill in "billingAddress.emailAddress" with "15453803@opayq.com"
			And I click on ".continue"
		Then I should see "Shipping Address"
		When I fill in "shippingAddress.address.firstName" with "John"
			And I fill in "shippingAddress.address.lastName" with "Moe"
			And I fill in "shippingAddress.address.address1" with "280 summer st"
			And I fill in "shippingAddress.address.address2" with "FL 3"
			And I fill in "shippingAddress.address.city" with "Boston"
		Given I set id for ".state select"
		When I select "MA" in "#blurclick"
			And I fill in "shippingAddress.address.postalCode" with "02210"
			And I fill in "shippingAddress.phone" with "6052223255"
			And I click on ".continue"
		Then I should see "Delivery Methods"
		When I click on ".continue"
		Then I should see "Payment Methods"
		When I fill in "cc-number" with "4111111111111111"
		Given I set id for ".expirationMonth"
		When I select "10" in "#blurclick"
		Given I set id1 for ".expirationYear"
		When I select "2024" in "#blurclick1"
			And I fill in "creditCardPaymentMethod.ccvNumber" with "465"