class Product < ActiveRecord::Base

  # table schema
  # name:string
  # description:text
  # price:integer

  belongs_to :order
  has_many :order_details, :through => :order_detail_product_relationships



end

