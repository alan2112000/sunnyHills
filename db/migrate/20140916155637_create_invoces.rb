class CreateInvoces < ActiveRecord::Migration
  def change
    create_table :invoces do |t|
      t.string :name

      t.timestamps
    end
  end
end
