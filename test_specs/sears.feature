@sandeep
Feature: Sears

	Scenario: Checkout on sears
		Given I am on "http://www.sears.com/" site
		When I click on text "Sign In" with ".r1"
		Then I sleep for 5 sec
		Given I set name for "#modalIframe iframe" iframe
		Given I switch to iframe "blurFrame"
		When I fill in "email" with "54d1a0c2@opayq.com"
			And I fill in "password" with "Bp7jakh[oJ"
			And I click on ".signIn"
		Given I switch to default content
		Then I should see "Hi hwhsh"
		When I click on link id "#gnf_lnkCart"
		Then I should see "Checkout FAQs"
		When I click on ".badge-title .ng-binding"
		Then I should see "Enter Your Contact Information"
		When I click on ".new-addr-text"
		Then I should see "First Name"
		When I fill in "firstName" with "John"
			And I fill in "lastName" with "Moe"
			And I fill in "address1" with "280 summer st"
			And I fill in "address2" with "FL 3"
			And I fill in "zipCode" with "02210"
			And I fill in "phone1" with "6052223214"
			And I click on text "Continue" with ".shc-btn"
		Then I sleep for 5 sec
		Then I should see "Payment & Billing"
		When I click on "#creditcardscroll .icon"
			And I fill in "nameOnCard" with "John Moe"
			And I fill in "otherCardNum" with "4111111111111111"
			And I select "10" from "cardExpMonth"
			And I select "2024" from "cardExpYear"
			And I fill in "cardCvv" with "451"
			