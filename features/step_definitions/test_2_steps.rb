When("I navigate to {string}") do |string|

  masthead = MastheadPage.new(@browser)
  masthead.production_element.wait_until(&:present?)
  masthead.production_element.click

end


Then("the Production Page toolbar title is {string}") do |expected_text|

  production = ProductionPage.new(@browser)
  production.toolbar_title_element.wait_until(&:present?)
  expect(production.toolbar_title).to eq(expected_text)

end