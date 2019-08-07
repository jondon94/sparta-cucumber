Feature: BBC Register

  Scenario: Inputting incorrect credentials to create a BBC account should produce an error
    Given I access the BBC register page
    And I enter an invalid password
    When I try to create an account
    Then I should be presented with an error
