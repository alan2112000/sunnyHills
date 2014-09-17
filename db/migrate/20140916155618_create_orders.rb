class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :company_id
      t.integer :amount
      t.date :date
      t.text :gift
      t.date :arrival_date
      t.integer :invoice_id

      t.timestamps
    end
  end
end
