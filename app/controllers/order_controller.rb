class OrderController < ApplicationController
  def page
    # create an entry in buyres table 
    @buyer = Buyer.new
    @buyer.profile_id = current_user.profile.id 
    @buyer.save
    
  end
end
