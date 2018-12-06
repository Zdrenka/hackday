Feature: Logging in, innit

  Scenario: Can log in
    Given I am on the Login page
    When I log in as 'client_user_23@amplience.com' with '10CMS'
    Then I should see 'Amplience - Dynamic Content'


  Scenario: Can't log in
    Given I am on the Login page
    When I log in as 'false@amplience.com' with 'TOTALLIES!'
    Then I should see the toast error
    And I am on the login page
