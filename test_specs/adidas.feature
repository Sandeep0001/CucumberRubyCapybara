@sandeep
Feature: Adidas

	Scenario: Checkout on adidas
		Given I am on "https://www.adidas.com/us/myaccount-create-or-login" site
		Given I switch to iframe "loginaccountframe"
		Then I should see "Remember Me"
		When I fill in "username" with "b7cf8898@opayq.com"
			And I fill in "password" with "S9fybcvghzsK"
			And I click on link id "#signinSubmit"
		Given I switch to default content
		Then I should see "HELLO"
		When I click on ".minicart-button"
		Then I should see "YOUR BAG"
		When I click on ".checkout-buttons-wrapper .btn-cart"
		Then I should see "SHIPPING ADDRESS"
		When I click on ".show_edit_address"
		Then I should see "In case there are questions about the order"
		When I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_firstName" with "John"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_lastName" with "Moe"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_address1" with "280 summer st"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_address2" with "FL 3"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_city" with "Boston"
			And I select "MA" in "#dwfrm_delivery_singleshipping_shippingAddress_addressFields_countyProvince"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_zip" with "02210"
			And I fill in "dwfrm_delivery_singleshipping_shippingAddress_addressFields_phone" with "6052223214"
			And I click on ".ffCheckbox"
		Then I should see "BILLING ADDRESS"
		When I click on ".billingdetails .show_edit_address"
		Then I should see "In case there are questions about the order"
		When I fill in "dwfrm_delivery_billing_billingAddress_addressFields_firstName" with "John"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_lastName" with "Moe"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_address1" with "280 summer st"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_address2" with "FL 3"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_city" with "Boston"
			And I select "MA" in "#dwfrm_delivery_billing_billingAddress_addressFields_countyProvince"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_zip" with "02210"
			And I fill in "dwfrm_delivery_billing_billingAddress_addressFields_phone" with "6052223214"
			And I click on link id "#dwfrm_delivery_savedelivery"
		Then I should see "PAYMENT METHOD"
		When I fill in id "#dwfrm_payment_creditCard_owner" with "John Moe"
			And I fill in id "#dwfrm_payment_creditCard_number" with "4111111111111111"
			And I select "10" in "#dwfrm_payment_creditCard_month"
			And I select "2024" in "#dwfrm_payment_creditCard_year"
			And I fill in id "#dwfrm_payment_creditCard_cvn" with "456"