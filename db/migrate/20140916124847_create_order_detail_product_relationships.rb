class CreateOrderDetailProductRelationships < ActiveRecord::Migration
  def change
    create_table :order_detail_product_relationships do |t|
      t.integer :orderDetail_id
      t.integer :product_id
      t.timestamps
    end
  end
end
