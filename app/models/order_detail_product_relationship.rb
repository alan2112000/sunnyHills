class OrderDetailProductRelationship < ActiveRecord::Base

  # Table Schema
  # order_id            :integer
  # product_id          :integer
  # amount              :integer
  # price               :integer


  belongs_to :order
  belongs_to :product



end
