class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_no
      t.string :person_charge
      t.string :contact

      t.timestamps
    end
  end
end
