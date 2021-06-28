class CartItemsController < ApplicationController
  def create
    item = current_user.carts.first.cart_items.find_by(menu_item_name: params[:menu_item_name])

    if item
      item.quantity += 1
      item.save
    else
      params[:quantity] = 1
      CartItem.create!(
        params.permit(:cart_id, :menu_item_id, :menu_item_name, :menu_item_price, :quantity)
      )
    end
    redirect_to menu_categories_path
  end
end
