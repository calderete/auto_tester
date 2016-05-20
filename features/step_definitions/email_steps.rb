
new_page = HomePage.new($browser)

Then(/^There will be a form field to subscribe to monthly releases$/) do
  expect(new_page.subscribe_field_exists?).to be true
end

When(/^I enter "(.*?)" into the form feild$/) do |email|
  @email = email
  @homepage = new_page
  @homepage.input_email(@email)  
end

When(/^I click on the button to submit the email address$/) do
  @homepage.submit_email
end

Then(/^a message will appear$/) do
  expect(@homepage.flash_response.present?).to be true
end

Then(/^the message will be tailored to the user$/) do
  expect("#{@homepage.flash_response.text}").to eql("Thanks! We will notify you of our new shoes at this email: #{@email}")
end
