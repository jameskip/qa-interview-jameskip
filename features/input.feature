Feature: Input fields

  Scenario: Input exist on page
    Given   I am on the homepage
    Then    the input fields should exist

  Scenario: Input checkbox works
    Given   I am on the homepage
    When    I click the Nickname checkbox
    Then    the Nickname checkbox should be unchecked
