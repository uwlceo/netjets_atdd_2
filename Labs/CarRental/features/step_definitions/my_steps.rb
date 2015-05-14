When(/^I search for cars using one search criteria$/) do
  #pending
  #Go to main page
  #Select New Reservation
  #Enter one search criteria
  #Search
  goto_rental_app

  select_new_customer

  @criteria1, @criteria_value = search_single_criteria
end

Then(/^I am shown all available cars based on the single search criteria$/) do
  #Make sure there are some results
   expect(search_results).not_to be_empty

  # #Make sure search results contain search criteria from previous step
  (search_results).each do |search_result|
   expect(search_result.send(@criteria1.to_sym)).to eq @criteria1_value
   end
end


When(/^I search for cars using multiple search criteria$/) do
  pending
  #Go to main page
  #Select New Reservation
  #Enter multiple search criteria
  #Search

  goto_rental_app

  select_new_customer

  @criteria1, @criteria1_value, @criteria2, @criteria2_value = search_multiple_criteria

end

Then(/^I am shown all available cars based on the multiple search criteria$/) do
  pending
  #Make sure there are some results
  expect(search_results).not_to be_empty

  #Make sure search results contain search criteria from previous step
  (search_results).each do |search_result|
    expect(search_result.send(@criteria1.to_sym)).to eq @criteria1_value
    expect(search_result.send(@criteria2.to_sym)).to eq @criteria2_value
  end
end



When(/^I search for cars using no search criteria$/) do
  pending
  #Go to main page
  #Select New Reservation
  #Enter no search criteria
  #Search

  #goto_rental_app

  #select_new_customer

  search_no_criteria

end

Then(/^I am shown empty search results$/) do
  pending
  #Make sure there are no results
  expect(search_results).to be_empty
end
#
#
# Given(/^I have done a search$/) do
#   pending
#   #Go to the main page
#   #Select New Reservation
#   #Enter one search criteria
#   #Search
# end

#
#
#
# When(/^I select to see more details about a car$/) do
#   #Click to view more details about a car
# end
#
# Then(/^I am able to see the details of the car$/) do
#   pending
#   #Verify details about car match the car selected in the previous step
# end
#
#
#
# When(/^I change the sort order of the search results$/) do
#   pending
#   #Modify to sort search results using a search criteria
# end
#
# Then(/^the search results are correctly sorted$/) do
#   pending
#   #Verify that the search results are sorted correctly based on the search criteria from the previous step
# end