When("I navigate to Production") do

  masthead = MastheadPage.new(@browser)
  masthead.production_element.wait_until(&:present?)
  masthead.production_element.click

end


Then("the Production Page toolbar title is {string}") do |expected_text|

  production = ProductionPage.new(@browser)
  production.toolbar_title_element.wait_until(&:present?)
  expect(production.toolbar_title).to eq(expected_text)

end


Then("I click the Create content button") do

  production = ProductionPage.new(@browser)
  production.create_content_button_element.wait_until(&:present?)
  production.create_content_button_element.click

end

And("I select the hackaday content type") do

  production = ProductionPage.new(@browser)
  production.hackaday_content_type_element.wait_until(&:present?)
  production.hackaday_content_type_element.click

end

And("the save button is disabled") do

  production = ProductionPage.new(@browser)
  production.save_button_element.wait_until(&:present?)
  expect(production.save_button_element.attribute('disabled')).to eq("true")

end