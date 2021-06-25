class MenuItemsController < ApplicationController
  def create
    MenuItem.create!(
      menu_category_id: params[:menu_category_id],
      name: params[:name],
      description: params[:description],
      price: params[:price],
    )
    redirect_to menu_categories_path
  end
end
