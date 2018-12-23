@sandeep
Feature: QVC

	Scenario: Checkout on qvc
		Given I am on "https://www.qvc.com/LogonForm?langId=-1&storeId=10251&catalogId=10151" site
		Then I should see "Sign In"
		When I fill in "txtEmailAddress" with "67b831e8@opayq.com"
			And I click on link id "#btnSignIn"
		Then I should see "Forgot Your Password?"
		When I fill in "txtPassword" with "Ycd8c7oE"
			And I click on link id "#btnSignIn"
		Then I should see "Hello"
		When I click on link id "#ancCart"
		Then I should see "Shopping Cart"
			And I clear cart if I see "Remove" and I click on ".wrapBtnremove" and I dont do anything if I see "There are no items in your Shopping Cart"
		When I fill in "txtMastheadSearch" with "E229121" and press enter
		Then I should see "VIZIO"
		When I click on ".btnAddToCart"
		Then I should see "In Stock"
		When I click on link id "#checkoutBtn"
		Then I should see "Use Current Ship-To Address"
		When I click on link id "#tabNav-sameAsBillTo"
		Then I should see "Create New Address"
		When I fill in "txtFirstName" with "John"
			And I fill in "txtLastName" with "Moe"
			And I fill in "txtAddress1" with "280 summer st"
			And I fill in "txtAddress2" with "FL 3"
			And I fill in "txtZipPostalCode" with "02210"
			And I click on link id "#tabNav-editCurrent"
		Then I should see "Create New Address"
		When I click on link id "#btnContine"
		Then I should see "Shipping Method"
		When I click on "#divButtons .primaryButton"
		Then I should see "Payment Method"
			And I should see "Security Code"
			And I fill in "txtNewCardNumber" with "4111111111111111"
			And I select "10/2024" in "#lblNewCard"
			And I fill in "txtSecurityCode" with "456"
		
		