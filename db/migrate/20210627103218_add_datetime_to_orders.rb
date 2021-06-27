class AddDatetimeToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :delivered_at, :date
  end
end
