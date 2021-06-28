class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :user

  def self.pending
    where(delivered_at: nil)
  end

  def self.delivered
    where("delivered_at != ?", nil)
  end
end
