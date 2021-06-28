class RemoveOrderidFromCartItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :cart_items, :order_id, :bigint
  end
end
