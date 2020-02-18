# 1. The input fields exist
Then(/^the input fields should exist$/) do
  page.assert_selector('input[name="firstname"]')
  page.assert_selector('input[name="lastinitial"]')
  page.assert_selector('input[type="checkbox"]')
end

# 2. A negative scenario using the input fields
When(/^I click the Nickname checkbox$/) do
  page.uncheck('shorten')
end

Then(/^the Nickname checkbox should be unchecked$/) do
  page.has_unchecked_field?('shorten')
end

# 3. Input data into the fields
When(/^I input a name: "(.*?)"$/) do |name|
  within('form') do
    fill_in 'firstname', with: name
  end
end

#4. Submit a male name
And(/^I click "(.*?)"$/) do |text|
  click_on text
end

Then(/^one name should be added to rap name table$/) do
  expect(find(:xpath, '/html/body/table/tbody/tr/td/table/tbody/tr/td[1]/div/table/tbody/tr[1]')).to have_content(/[a-zA-Z]/)
end

#5. Submit two female names with initial
And(/^I input an initial: "(.*?)"$/) do |initial|
  within('form') do
    fill_in 'lastinitial', with: initial
  end
end

Then(/^two names should be added to rap name table$/) do
  expect(find(:xpath, '/html/body/table/tbody/tr/td/table/tbody/tr/td[1]/div/table/tbody/tr[2]')).to have_content(/[a-zA-Z]/)
end
