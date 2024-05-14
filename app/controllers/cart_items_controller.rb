class CartItemsController < ApplicationController
  def create
    item = Item.find(params[:item])
    puts '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'
    puts item
    @CartItem = CartItem.create(cart: current_user.cart, price: item.price, item: item)

    respond_to do |format|
      if @CartItem.save
        format.html { redirect_back fallback_location: root_path, notice: "Item was successfuly added to yout cart." }
        format.json { render :show, status: :created, location: @CartItem }
      end
    end
  end
    
  def update
  end
      
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy

    redirect_to cart_item_path
  end
end


