Feature: Edition Slot Creation

  Scenario: Edition Slot Creation
    Given I am on the Login page
    When I log in as 'client_user_23@amplience.com' with '10CMS'
    And I navigate to Planning
    And select the 'Create event'
    Then the event modal is open
    When the event fields are populated the save and save open buttons are enabled
    And the save and open button is clicked the event page is opened
