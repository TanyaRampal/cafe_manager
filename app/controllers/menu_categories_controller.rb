class MenuCategoriesController < ApplicationController
  def index
  end

  def create
    MenuCategory.create!(
      name: params[:name],
    )
    redirect_to menu_categories_path
  end
end
