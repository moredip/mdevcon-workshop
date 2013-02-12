Feature: 
  As a fan of counting
  I want to create a new counter
  So I can count

  Scenario: Adding a counter
    Given I've just launched the app for the first time
    When I touch the Add button
    And I choose CountUp
    And I enter a group name of "Nice Things"
    And I enter a counter name of "Smiles"
    And I hit Save

    Then I should be on the main screen
    And I should see the "Nice Things" group
    And I should see the "Smiles" counter
