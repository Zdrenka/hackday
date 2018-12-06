Feature: Content item, creation

  Scenario: Content Item creation
    Given I am on the Login page
    When I log in as 'manchester@amplience.com' with '10CMS'
    And I navigate to Production
    Then the Production Page toolbar title is 'Content Library'
    Given I click the Create content button
    And I select the hackaday content type
    Then the save button is disabled