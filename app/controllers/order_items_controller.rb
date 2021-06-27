class OrderItemsController < ApplicationController
  def create
    OrderItem.create!(
      params.permit(:order_id, :menu_item_id, :menu_item_name, :menu_item_price)
    )
    redirect_to menu_categories_path
  end
end
