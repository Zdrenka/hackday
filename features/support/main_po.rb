require "page-object"

class MastheadPage
  include PageObject
  element(:production, css: "md-menu-bar > button:nth-child(2)")
end

class PlanningPage
  include PageObject

  # this now gives us prevbutton_element.click
  element(:prevbutton, 'aria-label' : "chevron_left")
end

class ProductionPage
  include PageObject

  element(:toolbar_title, class: "am-toolbar__title")
  button(:content_button, class: "am-respository__label", index: 0)
  button(:slot_button, class: "am-repository__label", index: 1)
end