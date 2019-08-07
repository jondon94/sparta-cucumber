Given("I access the BBC register page") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_reg_page.visit_register_page
  bbc_reg_page.click_register_link
  bbc_reg_page.input_day_value('21')
  bbc_reg_page.input_month_value('7')
  bbc_reg_page.input_year_value('1914')
  bbc_reg_page.continue_signup_button
end

And("I enter an invalid password") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_reg_page.input_vaild_email('jondon@fakeemail.com')
  bbc_reg_page.input_new_password('testwillfail')
  bbc_reg_page.click_for_verify_password
  sleep 2
end

When("I try to create an account") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_reg_page.input_valid_postcode('W5 4XH')
  bbc_reg_page.select_sex
  bbc_reg_page.email_updates_selection('optOut')
  sleep 2
  bbc_reg_page.confirm_register
end

Then("I should be presented with an error") do
  # pending
  # Write code here that turns the phrase above into concrete actions
  bbc_reg_page.check_password_vailid_field
  sleep 2
end
