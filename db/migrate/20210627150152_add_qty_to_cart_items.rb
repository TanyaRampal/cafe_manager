class AddQtyToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :quantity, :bigint
  end
end
