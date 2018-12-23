Given /^I set name for "([^\"]*)" iframe$/ do |css|
	page.evaluate_script("$('#{css}')[0].setAttribute('name', 'blurFrame')")
end

Given /^I switch to iframe "([^\"]*)"$/ do |iframe|
	browser = page.driver.browser
	browser.switch_to.frame(iframe)
end

Given /^I switch to nested iframe1 "([^\"]*)" and iframe2 "([^\"]*)"$/ do |iframe1, iframe2|
	browser = page.driver.browser
	browser.switch_to.frame(iframe1)
	browser.switch_to.frame(iframe2)
end

Given /^I switch to default content$/ do
	browser = page.driver.browser
	browser.switch_to.default_content
end






