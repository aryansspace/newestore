class OrdersController < ApplicationController
  def new
    @order = current_cart.order
  end
end
