class MenuCategory < ActiveRecord::Base
  has_one_attached :category_image

  has_many :menu_items
end
