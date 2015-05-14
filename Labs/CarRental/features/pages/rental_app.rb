require 'page-object'

class RentalApp
  include PageObject
  page_url('rentthisthing.com')

  button(:new_reservation, :id => 'new-reservation-button')
end