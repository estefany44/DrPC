class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.text :diagnostic
      t.text :solution
      t.integer :price
      t.date :delivery_date
      t.string :status
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
