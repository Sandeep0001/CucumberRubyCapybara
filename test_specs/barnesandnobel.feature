@sandeep
Feature: Barnes and Nobel
	
	Scenario: Checkout on barnesandnobel
		Given I am on "http://www.barnesandnoble.com/" site
		When I click on link id "#signInLink"
		Then I sleep for 5 sec
		Given I set name for ".pure-modal iframe" iframe
		Given I switch to iframe "blurFrame"
		Then I should see "Email Address"
		When I fill in "email" with "1848b061@opayq.com"
			And I fill in "password" with "nSak1ksronoT"
			And I click on ".btn-green"
		Given I switch to default content
		Then I should see "Welcome"
		Given I am on items page "https://www.barnesandnoble.com/checkout/"
		When I click on link id "#continue"
		Then I should see "Shipping Information"
		When I click on text "Add" with ".chevron"
		Then I should see "Add a new Credit Card"
		When I fill in "ccNumber" with "4111111111111111"
			And I fill in "nameOnCard" with "John Moe"
			And I select "10" in "#ccMonth"
			And I select "2024" in "#ccYear"
			And I fill in "csv" with "458"
			And I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "streetAddress" with "280 summer st"
			And I fill in "aptSuite" with "FL 3"
			And I fill in "city" with "Boston"
			And I select "MA" in "#state"
			And I fill in "zipCode" with "02210"
			And I fill in "phoneNumber" with "6052225645"