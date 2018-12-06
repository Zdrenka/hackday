require "page-object"

class MastheadPage
  include PageObject
  element(:production, css: "md-menu-bar > button:nth-child(2)")
end

class PlanningPage
  include PageObject


end

class ProductionPage
  include PageObject

  element(:toolbar_title, class: "am-toolbar__title")
  element(:content_button, class: "am-respository__label", index: 0)
  element(:slot_button, class: "am-repository__label", index: 1)
end