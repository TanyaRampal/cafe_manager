class CartsController < ApplicationController
  def index
    Cart.create!(
      user_id: current_user.id,
    )
    redirect_to "/"
  end

  def show
  end

  def destroy
    cart = current_user.carts.find(params[:id])
    order = Order.create!(
      user_id: current_user.id,
      date: DateTime.now,
    )
    cart.cart_items.each do |item|
      OrderItem.create!(
        order_id: order.id,
        menu_item_id: item.menu_item_id,
        menu_item_name: item.menu_item_name,
        menu_item_price: item.menu_item_price,
        quantity: item.quantity,
        item_image: item.item_image,
      )
    end

    cart.destroy
    redirect_to "/"
  end
end
