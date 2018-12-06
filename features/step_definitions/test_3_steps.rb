
When("I navigate to Planning") do

  masthead = MastheadPage.new(@browser)
  masthead.planning_element.wait_until(&:present?)
  masthead.planning_element.click
end

Then("select the {string}") do |string|
  planning_page = PlanningPage.new(@browser)
  planning_page.create_event_element.wait_until(&:present?)
  planning_page.create_event_element.click
  
  planning_page.dialog_element.wait_until(&:present?)
end

