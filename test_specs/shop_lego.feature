@sandeep
Feature: Shop.lego
	
	Scenario: Checkout on shop.lego
		Given I am on "http://shop.lego.com/en-US/" site
		When I click on href "https://account2.lego.com/en-us/login?context=modal&returnUrl=http%3A%2F%2Fshop.lego.com%2Fen-US%2F"
		Then I sleep for 5 sec
		Given I switch to iframe "legoid-iframe"
		Then I should see "Remember me"
		When I fill in "fieldUsername" with "yhujfgjhfgdfh"
			And I fill in "fieldPassword" with "hyrZal9zzfwU"
			And I click on link id "#buttonSubmitLogin"
		Given I switch to default content
		Then I should see "CHANGE REGION"
		Given I am on items page "http://shop.lego.com/en-US/cart/shoppingCart.jsp"
		Then I should see "Total"
		When I click on link id "#btn-submit-cart-2"
		Then I should see "SHIPPING"
		When I fill in "/com/lego/order/CheckoutShippingFormHandler.address.firstName" with "John"
			And I fill in "/com/lego/order/CheckoutShippingFormHandler.address.lastName" with "Moe"
			And I fill in "/com/lego/order/CheckoutShippingFormHandler.address.address1" with "280 summer st"
			And I fill in "/com/lego/order/CheckoutShippingFormHandler.address.address2" with "Fl 3"
			And I fill in "/com/lego/order/CheckoutShippingFormHandler.address.city" with "Boston"
			And I select "MA" in ".stateSelect"
			And I fill in "/com/lego/order/CheckoutShippingFormHandler.address.postalCode" with "02210-1131"
			And I click on name "/com/lego/order/CheckoutShippingFormHandler.address.phoneNumber"
			And I click on link id "#btn-submit-shipping"
		Then I should see "Same as shipping address"
		When I fill in "/com/lego/order/CheckoutBillingFormHandler.address.firstName" with "John"
			And I fill in "/com/lego/order/CheckoutBillingFormHandler.address.lastName" with "Moe"
			And I fill in "/com/lego/order/CheckoutBillingFormHandler.address.address1" with "280 summer st"
			And I fill in "/com/lego/order/CheckoutBillingFormHandler.address.address2" with "FL 3"
			And I fill in "/com/lego/order/CheckoutBillingFormHandler.address.city" with "Boston"
			And I select "MA" in ".stateSelect"
			And I fill in "/com/lego/order/CheckoutBillingFormHandler.address.postalCode" with "02210"
			And I click on name "/com/lego/order/CheckoutBillingFormHandler.address.phoneNumber"
		Then I sleep for 5 sec
		Given I switch to iframe "di-eComm-iFrame"
		When I select "4000" in "#Paymetric_CreditCardType"
			And I fill in "Paymetric_CreditCardNumber" with "4111111111111111"
			And I fill in "Paymetric_Exp_Month" with "10"
			And I fill in "Paymetric_Exp_Year" with "24"
			And I fill in "Paymetric_CVV" with "456"
			