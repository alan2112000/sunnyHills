class OrderDetail < ActiveRecord::Base

  # order_id       integer
  # product_id     integer
  # amount         integer
  # total_price    intger

  belongs_to :order
  has_many :products, :through => :order_detail_product_relationships

  
end
