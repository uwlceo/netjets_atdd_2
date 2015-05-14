require 'page-object'

include PageObject::PageFactory

module RentalInteractions

  def search_results
    [RentalCarResult.new, RentalCarResult.new]
  end

  def search_single_criteria
    criteria1 ='rental_class'
    criteria1_value='luxury'
    on(RentalCarSearch) do |page|
      page.send("#{criteria1}=", criteria1_value)
      page.start_search
    end
    [criteria1, criteria1_value]
  end

  def search_multiple_criteria
    criteria1='rental class'
    criteria1_value='luxury'
    criteria2='price'
    criteria2_value='high'
    on(RentalCarSearch) do |page|
      page.send("#{criteria1}=", criteria1_value)
      page.send("#{criteria2}=", criteria2_value)
      page.start_search
    end

    [criteria1, criteria1_value, criteria2, criteria2_value]

  end

  def search_no_criteria
    on(RentalCarSearch) do |page|
      page.start_search
    end
  end

  def goto_rental_app
    visit RentalApp
  end

  def select_new_customer
    on(RentalApp) do |page|
      page.new_reservation
    end
  end

end


World (RentalInteractions)
