Feature: Search for Rental Cars


  Scenario: Search for Car with One Search Criteria
    When I search for cars using one search criteria
    Then I am shown all available cars based on the single search criteria


  Scenario: Search for Car with Multiple Search Criteria
    When I search for cars using multiple search criteria
    Then I am shown all available cars based on the multiple search criteria


  Scenario: Search with Null Results
    When I search for cars using no search criteria
    Then I am shown empty search results


  Scenario: Search Results Sort Order
    Given I have done a search
    When I change the sort order of the search results
    Then the search results are correctly sorted


  Scenario: Search Results Car Details
    Given I have done a search
    When I select to see more details about a car
    Then I am able to see the details of the car


