Feature: Pay for Car

  Scenario Outline: Pay for Car from New Reservation
    Given I have a new reservation
    When I pay via <payment_method>
    Then the car is paid for

    Examples:
    |payment_method|
    |credit card   |
    |debit card    |


  Scenario Outline: Pay for Car from Existing Reservation
    Given I have an existing reservation
    When I pay via <payment_method>
    Then the car is paid for

  Examples:
    |payment_method|
    |credit card   |
    |debit card    |









