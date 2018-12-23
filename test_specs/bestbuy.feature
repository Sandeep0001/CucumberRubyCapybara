@sandeep_novpn
Feature: Bestbuy

	Scenario: Checkout on bestbuy
		Given I am on "https://www.bestbuy.com/" site
		Then I should see "Country and Language"
		When I select "1" from "select_locale"
			And I click on ".go_button"
		Then I should see "Add us to your inbox"
			And I click on ".close"
		Then I should see "Sign In"
		When I click on ".user"
		Then I should see "Sign In to BestBuy.com"
		When I fill in "fld-e" with "28c313c4@opayq.com"
			And I fill in "fld-p1" with "mnn49srGlhcP"
			And I click on ".btn-text"
		Then I should see "Hi, Sam"
		When I click on ".header-icon-cart"
		Then I should see "Your Cart"
		When I click on ".checkout-btn"
		Then I should see "Secure Credit Card Payment"
		When I fill in "creditCard" with "5105 1051 0510 5100"
			And I fill in "securityCode" with "569"
			And I select "05" from "expirationMonth"
			And I select "2019" from "expirationYear"
			And I fill in "firstName" with "Sandeep"
			And I fill in "lastName" with "S"
			And I fill in "street" with "280 summer st"
			And I fill in "street2" with "3"
			And I fill in "city" with "Boston"
			And I select "MA" from "lb-select-147"
			And I fill in "zipcode" with "02210"
			And I fill in "dayPhoneNumber" with "6052223256"
			
		
