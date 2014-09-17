class CreatePaymentDetailOrderships < ActiveRecord::Migration
  def change
    create_table :payment_detail_orderships do |t|
      t.integer :order_id
      t.integer :payment_method_id
      t.integer :product_id
      t.integer :amount
      t.integer :order_id
      t.integer :payment_method_id
      t.integer :product_id
      t.integer :amount

      t.timestamps
    end
  end
end
