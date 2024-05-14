class CartsController < ApplicationController
  def index
    @cart = Cart.all
  end

  def show
  @all_cart_items = CartItem.where(cart: current_user.cart)

  @cart = current_user.cart
  end

  
  def destroy
  end
  
  def create
  end

  def update
  end
end
