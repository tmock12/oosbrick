Feature: Admin signs in
  Scenario: success
    Given the following user:
      | email    | lego@example.com |
      | password | password         |
    When I visit the sign in page
    And I fill in the following:
      | email    | lego@example.com |
      | password | password         |
    And I click "Sign In"
    Then I should be on the admin dashboard
