require 'page-object'

class RentalCarSearch
  include PageObject

  select_list(:rental_class, :id => 'car class')
  select_list(:price, :id => 'car price')
  button(:start_search, :id => 'search')
end