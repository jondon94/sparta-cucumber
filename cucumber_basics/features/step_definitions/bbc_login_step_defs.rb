# Given("I access the bbc login page") do
#    # Write code here that turns the phrase above into concrete actions
#    bbc_homepage.visit_home_page
#    bbc_homepage.click_sign_in_link
# end
#
# And("I input incorrect username details") do
#   # Write code here that turns the phrase above into concrete actions
#   bbc_sign_in_page.visit_register_page
#   bbc_sign_in_page.fill_in_username('johngyu')
# end
#
# And("I input incorrect password details") do
#   # Write code here that turns the phrase above into concrete actions
#   # bbc_sign_in_page.visit_register_page
#   bbc_sign_in_page.fill_in_password('newpword')
# end
#
# When("I try to login") do
#   # Write code here that turns the phrase above into concrete actions
#   bbc_sign_in_page.click_sign_in_button
# end
#
# Then("I receive an error for not finding the account") do
#   # Write code here that turns the phrase above into concrete actions
#   bbc_sign_in_page.incorrect_password_text
#   # sleep 3
# end

Given("I access the bbc login page") do
 bbc_homepage.visit_home_page
 bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
 bbc_sign_in_page.fill_in_username('Ruchg')
end

And("I input incorrect password details") do
 bbc_sign_in_page.fill_in_password('jfbsjahbsahj')
end

When("I input an incorrect username") do
 bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error for not finding the account") do
 bbc_sign_in_page.incorrect_password_text
end

Given("I input any username details") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_sign_in_page.fill_in_username('lordduck101')
end

Given("I input a incorrect password as 1234abc") do |int|
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_sign_in_page.fill_in_password('1234abc')

end

Then("I receive an error stating it needs to be at least 8 chars") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_sign_in_page.incorrect_password_text
end
