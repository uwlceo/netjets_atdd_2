require 'page-object'

class SouthwestSearchResults
  include PageObject

  text_field(:departure_airport, :id => 'originAirport_displayed')
  text_field(:arrival_airport, :id => 'destinationAirport_displayed')

  def flights
    #TODO Need to get the freaking flight number
    [1234]
  end
end
