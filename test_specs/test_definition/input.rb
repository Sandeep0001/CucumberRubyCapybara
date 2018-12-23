When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
	fill_in(field, :with => value, :match => :first)
end

When /^I fill in "([^\"]*)" with "([^\"]*)" and press enter$/ do |field, value|
	fill_in field, with: value+"\n"
end

When /^I press enter and fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
	fill_in field, with: "\n"+value
end

When /^I fill in id "([^\"]*)" with "([^\"]*)"$/ do |field, value|
	find(:css, field).set(value)
end

When(/^I select "([^\"]*)" in "([^\"]*)"$/) do |value, css|
	page.evaluate_script("(function(){try{$('#{css}').val('#{value}').trigger('change')}catch(e){document.querySelector('#{css}').value = '#{value}'};})()")
end

When(/^I select "([^\"]*)" from "([^\"]*)"$/) do |value, name|
	page.evaluate_script("$('select[name=#{name}]').val('#{value}')")
end

When(/^I select "([^\"]*)" item in "([^\"]*)"$/) do |value, css|
	puts page.find(:css, css).inspect
	page.find(:css, css).find(:xpath, 'option[4]').select_option
end