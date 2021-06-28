class OrderItem < ActiveRecord::Base
  has_one_attached :item_image

  belongs_to :order
  belongs_to :menu_item
end
