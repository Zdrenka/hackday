
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

Then("the event modal is open") do
  @create_event_modal = CreateEventModal.new(@browser)
  @create_event_modal.modal_element.wait_until(&:present?)
  expect(@create_event_modal.modal_element.present?).to be(true)

  expect(@create_event_modal.cancel_element.present?).to be(true)
  expect(@create_event_modal.save_element.present?).to be(true)
  expect(@create_event_modal.save_open_element.present?).to be(true)

  expect(@create_event_modal.cancel_element.enabled?).to be(true)
  expect(@create_event_modal.save_element.enabled?).to be(false)
  expect(@create_event_modal.save_open_element.enabled?).to be(false)
end

When("the event fields are populated the save and save open buttons are enabled") do

  @create_event_modal.name = "auto name"
  @create_event_modal.attachments = "http://www.autoattachments.com"
  @create_event_modal.comments = "auto comments"

  expect(@create_event_modal.save_element.enabled?).to be(true)
  expect(@create_event_modal.save_open_element.enabled?).to be(true)
end

And("the save and open button is clicked the event page is opened") do
  binding.pry
end
