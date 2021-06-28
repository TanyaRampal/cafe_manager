class ChangeColumnformatInOrders < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :delivered_at, :datetime
  end
end
