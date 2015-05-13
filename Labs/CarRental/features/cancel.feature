Feature: Cancel Reservation

  Scenario: Cancel Reservation
    Given I have an existing reservation
    When I cancel a reservation
    Then the reservation shows as cancelled