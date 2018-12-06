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

class Modal
  include PageObject
  element(:modal, css: "md-dialog")

  button(:cancel, css: "md-dialog-actions > button", index: 0)
  button(:save, css: "md-dialog-actions > button", index: 1)
  button(:save_open, css: "md-dialog-actions > button", index: 2)
end

class CreateEventModal < Modal
  text_field(:name, name: "name")
  text_field(:attachments, name: "brief")
  text_area(:comments, name: "comment")
end

class CreateEditionModal < Modal
  text_field(:name, name: "editionName")
  text_area(:comments, name: "comment")
end

class Event
  include PageObject

  h1(:title, class: "block-detail-summary__title")
  # these dont work for now
  div(:start, css: "am-event-detail > div.block-detail-summary__details > div:nth-child(1)")
  div(:end, css: "am-event-detail > div.block-detail-summary__details > div:nth-child(1)")

  button(:create_edition, css: "div.am-event-detail__actions.ng-scope > button")
end

class Edition
  include PageObject

  h1(:title, class: "block-detail-summary__title")

  button(:add_slots, css: "am-edition-page am-empty-content-placeholder button")
end

class SlotLibrary
  include PageObject

  div(:slot_drag_area, class: "am-pane__content")
  div(:slot_librrary, class: "am-edition-page__slots-wrapper")

  def select_slot_item(index)
    self.browser.element(css: "tbody tr", index: index).click
  end

  def drag_slot_item(index, element)
    self.browser.element(css: "tbody tr", index: index).drag_and_drop_on(element)
  end

  def drag_area
    self.browser.element(css: "am-pane__content")
  end
end
