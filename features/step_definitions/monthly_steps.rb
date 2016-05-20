
month_page = MonthPage.new($browser)

Then (/^I should see shoes displayed on the page$/) do
 	expect(month_page.shoes_exist?).to be true
end

Then (/^I should see the msrp for each shoe$/) do 
	expect(month_page.price_exists?).to be true
end

Then (/^Each price should be a valid value$/) do 
	expect(month_page.price_valid?).to be true
end

Then (/^I should see a blurb for each shoe$/) do
	expect(month_page.blurb_exists?).to be true
end

Then (/^I should see an image for each shoe$/) do
	expect(month_page.image_exists?).to be true
end

Then (/^I should see a name for each shoe$/) do
	expect(month_page.name_exists?).to be true
end
