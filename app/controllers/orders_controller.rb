class OrdersController < ApplicationController
  def index
  	cart= Cart.find_by(user_id: current_user.id, open: true)
  	@orders = cart.orders
  end
end
