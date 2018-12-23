Given /^I am on "([^\"]*)" site$/ do |site|
	visit site
end

Given /^I am on items page "([^\"]*)"$/ do |item|
	visit item
end

Given /^I set id for "([^\"]*)"$/ do |css|
	page.evaluate_script("document.querySelector('#{css}').setAttribute('id', 'blurclick')")
end

Given /^I set id1 for "([^\"]*)"$/ do |css|
	page.evaluate_script("document.querySelector('#{css}').setAttribute('id', 'blurclick1')")
end

Then /^I sleep for 5 sec$/ do
	sleep(5)
end

Then /^I ignore onbeforeunload pop-ups$/ do
	page.evaluate_script("window.onbeforeunload = function(e){};")
end

Then /^I accept alerts$/ do
	page.driver.browser.switch_to.alert.accept
end

Then /^I should see "([^\"]*)"$/ do |text|
	HoldOn.until(timeout: 60, interval: 1) do
		begin 
			page.has_content? text
		rescue Selenium::WebDriver::Error::StaleElementReferenceError
		end
	end
end

Then /^Field "([^\"]*)" should have "([^\"]*)"$/ do |field, value|
	HoldOn.until(timeout: 60, interval: 1) do
		(find_field(field).value =~ Regexp.new(value)) != nil
	end
end

Then /^Field password should have numbers$/ do
	HoldOn.until(timeout: 60, interval: 1) do
		(find_field("password").value =~ Regexp.new("[0-9]+")) != nil
	end
end

Then /^Field password should have special characters$/ do
	HoldOn.until(timeout: 60, interval: 1) do
		(find_field("password").value =~ Regexp.new('[`~!@#$%^&\*\(\)_\-+={}\|\[\]\\:";\'<>\?,/\.]+')) != nil
	end
end

Then /^I should not see "([^\"]*)"$/ do |text|
	HoldOn.until(timeout: 10, interval: 1) do
		expect(page).to have_no_content text
	end
end

Then /^Field "([^\"]*)" should not have "([^\"]*)"$/ do |field, value|
	HoldOn.until(timeout: 60, interval: 1) do
	puts value
		(find_field(field).value =~ Regexp.new(value)) == nil
	end
end

Then /^Field password should not have numbers$/ do
	HoldOn.until(timeout: 60, interval: 1) do
		(find_field("password").value =~ Regexp.new("[0-9]+")) == nil
	end
end

Then /^Field password should not have special characters$/ do
	HoldOn.until(timeout: 60, interval: 1) do
		(find_field("password").value =~ Regexp.new('[`~!@#$%^&\*\(\)_\-+={}\|\[\]\\:";\'<>\?,/\.]+')) == nil
	end
end

When /^I delete old files of name "([^\"]*)" in downloads folder$/ do |name|
    path = ENV['USERPROFILE']+'\\Downloads\\'+name
	Dir.glob(path.gsub(/\\/, '/')).each { |f| File.delete(f) }
end

Then /^I should see file "([^\"]*)" in downloads folder$/ do |name|
	HoldOn.until(timeout: 60, interval: 1) do
		path = ENV['USERPROFILE']+'\\Downloads\\'+name
		(!Dir.glob(path.gsub(/\\/, '/')).empty?) == true
	end
end

Then /^I should see "([^\"]*)" in "([^\"]*)" file$/ do |content, name|
	path = ENV['USERPROFILE']+'\\Downloads\\'+name
	Dir.glob(path.gsub(/\\/, '/')).each do |f| 
		(File.read(f).include?(content)) == true
	end
end

Given /^I am on "([^\"]*)" page$/ do |page|
	visit "/#/"+page
end


Then /^I clear cart if I see "([^\"]*)" and I click on "([^\"]*)" and I dont do anything if I see "([^\"]*)"$/ do |text1, css, text2|
	if page.has_content? text1
		   find(css).click
		   HoldOn.until(timeout: 60, interval: 1) do
				   page.has_content? text2
		   end
    end        
end

Then /^I clear cart if I see "([^\"]*)" then I check the box "([^\"]*)" and I click on "([^\"]*)" and I dont do anything if I see "([^\"]*)"$/ do |text1, id, css, text2|
	if page.has_content? text1
		   find(css).click
		   check(id)
		   HoldOn.until(timeout: 60, interval: 1) do
				   page.has_content? text2
		   end
    end        
end

Then /^I clear cart if I see "([^\"]*)" and I click on "([^\"]*)" if confirm pops up then I click "([^\"]*)" with "([^\"]*)" and I dont do anything if I see "([^\"]*)"$/ do |text1, css, btn, link, text2|
       if page.has_content? text1
               find(css).click
			   find(link, :text => btn).click
               HoldOn.until(timeout: 60, interval: 1) do
                       page.has_content? text2
               end
       end        
end