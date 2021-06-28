class AddCartidToCartItems < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :cart_id, :bigint
  end
end
