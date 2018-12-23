@sandeep
Feature: Quill
	
	Scenario: Checkout on quill
		Given I am on "https://www.quill.com/Account/Login?" site
		When I click on link id "#modalClose"
		Then I should see "Remember me"
		When I fill in "txtUserName" with "a9fe8931@opayq.com"
			And I fill in "passwordLoginRegular" with "lowdj7QrrobY"
			And I click on ".LoginSmallBtn"
		Then I should see "WELCOME"
		When I click on link id "#hdr_cartLink"
		Then I should see "My Shopping Cart"
		When I click on link id "#CartCheckout"
		Then I should see "Billing Address"
		When I fill in "AddressModel_FirstName" with "John"
			And I fill in "AddressModel_LastName" with "Moe"
			And I fill in "AddressModel_PhoneNumber" with "6052223254"
			And I fill in "AddressModel_Address" with "280 summer st"
			And I fill in "AddressModel_AddressAddition" with "FL 3"
			And I fill in "AddressModel_Zipcode" with "02210"
			And I fill in "AddressModel_City" with "Boston"
			And I select "MA" in "#AddressModel_State"
			And I fill in "CCNumber" with "4111111111111111"
			And I select "10" in "#CCExpMonth"
			And I select "2024" in "#CCExpYear"
			And I fill in "CCSecurityCode" with "465"
			And I fill in "CCNameOnCard" with "John Moe"
			And I click on link id "#SI"
		Then I should see "Your selected Delivery Address"
		When I click on link id ".editAddress #EditChkAddress"
		Then I should see "First Name"
		When I fill in "FirstName" with "John"
			And I fill in "LastName" with "Moe"
			And I fill in "PhoneNumber" with "6052223254"
			And I fill in "Address" with "280 summer st"
			And I fill in "AddressAddition" with "FL 3"
			And I fill in "Zipcode" with "02210"
			And I fill in "City" with "Boston"
			And I select "MA" in "#State"
			
			