require "page-object"

class MastheadPage
end

class PlanningPage
  include PageObject

  # this now gives us prevbutton_element.click
  element(:prevbutton, 'aria-label': "chevron_left")
end
