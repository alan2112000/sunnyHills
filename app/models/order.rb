class Order < ActiveRecord::Base

  # company_id integer
  # invoice_id integer
  # discount_id integer
  # amount     integer
  # date       date
  # arrival_date date
  # memo       text
  # gift       text

  belongs_to :company
  has_many :products, :through =>  :order_detail_product_relationships
  has_many :order_detail_product_relationships
  has_many :invoceses

end
