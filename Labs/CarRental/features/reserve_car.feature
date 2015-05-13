Feature: Reserve Car

  Scenario: Reserve Car
    Given I have done a search
    When I reserve a car
    Then the car is shown as reserved