require "page-object"

class MastheadPage
  include PageObject
  element(:planning, css: "md-menu-bar > button:nth-child(1)")
  element(:production, css: "md-menu-bar > button:nth-child(2)")
end

class PlanningPage
  include PageObject
  button(:create_event, class: "md-primary")
  element(:dialog, css: "am-event-dialog")
  button(:save, css: "aria-label: 'Save & open event', disabled")
  button(:saveAndOpen, css: "aria-label: 'Save', disabled")
end

class ProductionPage
  include PageObject

  element(:toolbar_title, css: ".md-toolbar-tools .am-toolbar__title")
  element(:content_button, css: ".am-repository__label", index: 0)
  element(:slot_button, css: ".am-repository__label", index: 1)
  element(:create_content_button, class: "md-primary")
  element(:hackaday_content_type, class: "content-type-card", index: 14)
  element(:save_button, class: "am-split-button--left")
end

class CreateEventModal
  include PageObject

  element(:modal, css: "md-dialog")
  text_field(:name, name: "name")
  text_field(:attachments, name: "brief")
  text_area(:comments, name: "comment")
  button(:cancel, css: "md-dialog-actions > button", index: 0)
  button(:save, css: "md-dialog-actions > button", index: 1)
  button(:save_open, css: "md-dialog-actions > button", index: 2)
end

class Planning
end
