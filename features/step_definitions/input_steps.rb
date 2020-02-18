Then(/^the input fields should exist$/) do
  page.assert_selector('input[name="firstname"]')
  page.assert_selector('input[name="lastinitial"]')
  page.assert_selector('input[type="checkbox"]')
end

When(/^I click the Nickname checkbox$/) do
  page.uncheck('shorten')
end

Then(/^the Nickname checkbox should be unchecked$/) do
  page.has_unchecked_field?('input[name="shorten"]')
end
