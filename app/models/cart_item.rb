class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item

  def self.in_cart?(item_name)
    find_by(menu_item_name: item_name) ? find_by(menu_item_name: item_name) : false
  end
end
