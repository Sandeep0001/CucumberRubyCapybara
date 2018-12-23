When /^I click on text "([^\"]*)" with "([^\"]*)"$/ do |text, css|
	first(css, :text => text).click
end

When /^I click on name "([^\"]*)"$/ do |name|
	find("input[name='#{name}']").click
end

When /^I click on value "([^\"]*)"$/ do |value|
	find("input[value='#{value}']").click
end

When /^I click on alt "([^\"]*)"$/ do |value|
	find("input[alt='#{value}']").click
end

When /^I press "([^\"]*)"$/ do |label|
	find('.btn', :text => label).click
end

When(/^I click on js "([^\"]*)"$/) do |css|
	HoldOn.until(timeout: 60, interval: 1) do
		page.evaluate_script("document.querySelector('#{css}') !=null")
	end
	page.evaluate_script("document.querySelector('#{css}').click()")
end

When(/^I click on "([^\"]*)"$/) do |css|
	HoldOn.until(timeout: 60, interval: 1) do
		first(css).click
	end
end

When(/^I click on button labeled "([^\"]*)"$/) do |text|
	find('.btn', :text => text).click
end

When(/^I click on href "([^\"]*)"$/) do |href|
	find("a[href='#{href}']").click
end

When(/^I click on text "([^\"]*)"$/) do |text|
	page.find(:xpath,"//*[text()='#{text}']").click
end

When(/^I uncheck "([^\"]*)"$/) do |id|
	uncheck(id)
end

When(/^I check "([^\"]*)" with click$/) do |id|
	find(:css, id).click || check(id)
end

When(/^I check "([^\"]*)"$/) do |id|
	check(id)
end

When(/^I choose "([^\"]*)"$/) do |id|
	choose(id)
end

When(/^I hover on "([^\"]*)"$/) do |css|
	find(css).hover
end

When(/^I click on link id "([^\"]*)"$/) do |id|
	HoldOn.until(timeout: 60, interval: 1) do
		page.find(:css, id).click
	end
end

When(/^I click on Your Info$/) do
	find('li.additional a', :text => 'Your Info').click
end

When(/^I create backup on "([^\"]*)"$/) do |command|
	page.evaluate_script("Maskme.BlurStore.autoBackup('"+command+"', true);")
	HoldOn.until(timeout: 120, interval: 2) do
		page.evaluate_script('!!Maskme.BlurStore.backupInProgress') == false
	end
end
When(/^I click button with text "([^\"]*)"$/) do |text|
	find('.button', :text => text).click
end
