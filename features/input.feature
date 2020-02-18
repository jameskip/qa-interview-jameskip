Feature: Input fields
  
  Scenario: Input exist on page
    Given   I am on the homepage
    Then    the input fields should exist

  Scenario: Input checkbox works
    Given   I am on the homepage
    When    I click the Nickname checkbox
    Then    the Nickname checkbox should be unchecked

  Scenario: Submit a male name
    Given   I am on the homepage
    When    I input a name: "James"
    And     I click "Suggest Male Rap Name"
    Then    one name should be added to rap name table

  Scenario: Submit 2 female names
    Given   I am on the homepage
    When    I input a name: "Jamie"
    And     I input an initial: "K"
    And     I click "Suggest Female Rap Name"
    And     I click "Suggest Female Rap Name"
    Then    two names should be added to rap name table
