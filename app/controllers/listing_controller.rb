class ListingController < ApplicationController
  def page
    @dishes = Dish.all
  end
end
 
