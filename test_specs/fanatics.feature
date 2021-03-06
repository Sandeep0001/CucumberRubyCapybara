@sandeep
Feature: Fanatics

	Scenario: Checkout on fanatics
		Given I am on "https://www.fanatics.com/account/login" site
		Then I should see "Remember Me"
		When I fill in "Login_UserName" with "703845ba@opayq.com"
			And I fill in "Login_Password" with "bxdlphz0ZU"
			And I click on link id "#Login_Submit"
		Then I should see "My Account"
		When I click on link id "#headerCartTextLink"
		Then I should see "Shopping Cart"
		When I click on text "Secure Checkout Now" with "#cartHeaderRight .button"
		Then I should see "Billing Address"
		When I fill in "Billing.FirstName" with "John"
			And I fill in "Billing.LastName" with "Moe"
			And I fill in "Billing.Address1" with "280 summer st"
			And I fill in "Billing.Address2" with "FL 3"
			And I fill in "Billing.City" with "Boston"
			And I select "MA" in "#Billing.State"
			And I fill in "Billing.Zip" with "02210"
			And I fill in "Billing.Phone" with "6052223254"
			And I fill in "Billing.Email" with "703845ba@opayq.com"
			And I fill in "Shipping.FirstName" with "John"
			And I fill in "Shipping.LastName" with "Moe"
			And I fill in "Shipping.Address1" with "280 summer st"
			And I fill in "Shipping.Address2" with "FL 3"
			And I fill in "Shipping.City" with "Boston"
			And I select "MA" in "#Shipping.State"
			And I fill in "Shipping.Zip" with "02210"
			And I fill in "Shipping.Phone" with "6052223254"
			And I fill in "Shipping.Email" with "703845ba@opayq.com"
			And I click on link id "#AddressSubmit"
		Then I should see "Verify Your Shipping Address"
		When I click on link id "#saContinueButton"
		Then I should see "Payment Information"
		When I fill in "CardNumber" with "4111111111111111"
			And I select "10" in "#ExpirationMonth"
			And I select "24" in "#ExpirationYear"
			And I fill in "CVV2" with "465"			