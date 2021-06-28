class MenuItemsController < ApplicationController
  def create
    MenuItem.create!(
      params.permit(:menu_category_id, :name, :description, :price, :item_image)
    )
    redirect_to menu_categories_path
  end
end
