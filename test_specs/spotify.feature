@sandeep
Feature: Spotify

	Scenario: Checkout on npotify
		Given I am on "https://www.spotify.com/us/" site
		When I click on link id "#header-login-link"
		Then I should see "Remember me"
		When I fill in "login-username" with "1523e02b@opayq.com"
			And I fill in "login-password" with "fdvgMma01A"
			And I click on ".btn-green"
		Then I should see "Spotify Free"
		When I click on link id ".subscription #btn-cta-subscription-card"
		Then I sleep for 5 sec
		Given I set name for ".iframe-pci" iframe
		Given I switch to iframe "blurFrame"
		Then I should see "Card number"
		When I fill in "cardnumber" with "4111111111111111"
			And I select "10" in "#expiry-month"
			And I select "2024" in "#expiry-year"
			And I fill in "security-code" with "454"
			And I fill in "zip-code" with "02210"