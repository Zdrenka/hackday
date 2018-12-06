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

  element(:toolbar_title, css: ".md-toolbar-tools .am-toolbar__title")
  element(:content_button, css: ".am-repository__label", index: 0)
  element(:slot_button, css: ".am-repository__label", index: 1)
end
