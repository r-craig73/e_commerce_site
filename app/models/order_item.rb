class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  scope :total_quantity, -> { where("quantity >=?", OrderItem..order_id.last)}


end
