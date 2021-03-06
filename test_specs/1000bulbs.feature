@sandeep
Feature: 1000bulbs

	Scenario: Checkout on 1000bulbs
		Given I am on "https://www.1000bulbs.com/" site
		When I click on ".caret"
		Then I should see "Remember Me"
		When I fill in "email" with "1e7ec542@opayq.com"
			And I fill in "password" with "tD8ucqjxddoC"
			And I click on ".success"
		Then I should see "John"
		Given I am on items page "https://www.1000bulbs.com/cart/"
		Then I should see "Shopping Cart"
		When I click on value "Checkout"
		Then I should see "Payment Options"
		When I fill in "cc[name]" with "John Moe"
			And I fill in "cc[number]" with "4111111111111111"
			And I fill in "cc[ccv]" with "456"
			And I select "10" in "#cc_exp_month"
			And I select "2024" in "#cc_exp_year"
		Given I am on items page "https://www.1000bulbs.com/checkout/review"
		Then I should see "Address Info"
		When I click on link id "#ship_to_link"
		Then I should see "Name"
		When I fill in "shipping[name]" with "John Moe"
			And I fill in "shipping[phone]" with "6052224458"
			And I fill in "shipping[address_1]" with "280 summer st"
			And I fill in "shipping[address_2]" with "FL 3"
			And I fill in "shipping[city]" with "Boston"
			And I select "MA" in "#shipping_state"
			And I fill in "shipping[zip_code]" with "02210"
			And I fill in "billing[name]" with "John Moe"
			And I fill in "billing[phone]" with "6052224458"
			And I fill in "billing[address_1]" with "280 summer st"
			And I fill in "billing[address_2]" with "FL 3"
			And I fill in "billing[city]" with "Boston"
			And I select "MA" in "#billing_state"
			And I fill in "billing[zip_code]" with "02210"
			