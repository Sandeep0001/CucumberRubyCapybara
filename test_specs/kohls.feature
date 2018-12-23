@sandeep
Feature: Kohls
	
	Scenario: Checkout on kohls
		Given I am on "http://www.kohls.com/" site
		When I click on link id ".utility-nav-group #pb_signin"
		Then I sleep for 5 sec
		Given I switch to iframe "fancybox-frame"
		When I fill in "user_login" with "1096a0db@opayq.com"
			And I fill in "user_password" with "cshj5xyqsS2D"
			And I click on link id "#modal_kohls_login_signin_button"
		Given I switch to default content
		Then I should see "Hello, vhshd"
		When I click on ".checkout-link"
		Then I should see "Shopping"
			And I clear cart if I see "Remove" and I click on ".bag_remove_item" and I dont do anything if I see "There are no items in your shopping bag"
		Given I am on items page "http://www.kohls.com/product/prd-2076623/graco-my-ride-65-convertible-car-seat.jsp?skuId=98922140"
		When I click on link id "#addtobagID"
			And I click on link id "#checkout-container"
		Then I should see "Shopping"
		When I click on ".shiptoadrsAddbtn"
		Then I should see "Add a new address"
		When I fill in "tr_add_us_fname" with "John"
			And I fill in "tr_add_us_lname" with "Moe"
			And I fill in "tr_add_us_address1" with "280 summer st"
			And I fill in "tr_add_us_address2" with "FL 3"
			And I fill in "tr_add_us_city" with "Boston"
			And I select "MA" from "tr_add_us_state"
			And I fill in "tr_add_us_zipcode" with "02210"
			And I fill in "tr_add_us_phone" with "6052221245"
			And I click on ".kas-checkout-regShipping-address-cancel-button"
			And I click on ".button_continueToPayment"
		Then I should see "PAYMENT METHOD"
		When I click on ".paymentAddbtn"
			And I select "visa" in "#payment_type"
			And I fill in "Card Number" with "41111111111111"
			And I select "10" in "#creditcard-month-select"
			And I select "2024" in "#creditcard-year-select"
		
			
		
		