class MenuCategoriesController < ApplicationController
  def index
    if current_user.carts == []
      redirect_to carts_path
      return
    end
    render "show"
  end

  def create
    MenuCategory.create!(
      name: params[:name],
    )
    redirect_to menu_categories_path
  end
end
