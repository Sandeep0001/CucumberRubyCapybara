@sandeep
Feature: Converse

	Scenario: Checkout on converse
		Given I am on "https://www.converse.com/us" site
		When I click on ".close-button"
		When I click on ".login"
		Then I should see "Remember me"
		When I fill in id ".username-input" with "f53a4138@opayq.com"
			And I fill in id ".password-input" with "ct5yyObeobzF"
			And I click on link id "#login-btn"
		Then I sleep for 5 sec
		Given I am on items page "https://www.converse.com/us/en/cart"
		Then I should see "TOTAL"
		Given I am on items page "https://www.converse.com/us/en/checkout-shipping"
		Then I should see "Shipping Address"
		When I fill in "dwfrm_singleshipping_shippingAddress_addressFields_common_firstName" with "John"
			And I fill in "dwfrm_singleshipping_shippingAddress_addressFields_common_lastName" with "Moe"
			And I fill in "dwfrm_singleshipping_shippingAddress_addressFields_common_address1" with "280 summer st"
			And I fill in "dwfrm_singleshipping_shippingAddress_addressFields_common_address2" with "FL 3"
			And I fill in "dwfrm_singleshipping_shippingAddress_addressFields_common_city" with "Boston"
			And I select "MA" in "#dwfrm_singleshipping_shippingAddress_addressFields_states_stateCode"
			And I fill in "dwfrm_singleshipping_shippingAddress_addressFields_regional_zip" with "02210" and press enter
		Then I should see "Payment Method"
		When I select "Visa" in "#dwfrm_billing_paymentMethods_creditCard_type"
			And I fill in "dwfrm_billing_paymentMethods_creditCard_number" with "4111111111111111"
			And I select "10" in "#dwfrm_billing_paymentMethods_creditCard_month"
			And I select "2024" in "#dwfrm_billing_paymentMethods_creditCard_year"
			And I fill in "dwfrm_billing_paymentMethods_creditCard_cvn" with "465"
			And I fill in "dwfrm_billing_billingAddress_addressFields_common_firstName" with "John"
			And I fill in "dwfrm_billing_billingAddress_addressFields_common_lastName" with "Moe"
			And I fill in "dwfrm_billing_billingAddress_addressFields_common_address1" with "280 summer st"
			And I fill in "dwfrm_billing_billingAddress_addressFields_common_address2" with "FL 3"
			And I fill in "dwfrm_billing_billingAddress_addressFields_common_city" with "Boston"
			And I select "MA" in "#dwfrm_billing_billingAddress_addressFields_states_stateCode"
			And I fill in "dwfrm_billing_billingAddress_addressFields_regional_zip" with "02210"
			And I fill in "dwfrm_billing_billingAddress_email_emailAddress" with "f53a4138@opayq.com"
			And I fill in "dwfrm_billing_billingAddress_email_confirmationEmailAddress" with "f53a4138@opayq.com"
			And I fill in "dwfrm_billing_billingAddress_addressFields_regional_phone" with "6052221235"