class MenuItem < ActiveRecord::Base
  has_one_attached :item_image
  belongs_to :menu_category
end
