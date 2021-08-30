class CreateReservas < ActiveRecord::Migration[6.0]
  def change
    create_table :reservas do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :status
      t.string :problemas
      t.integer :pago_diagnosticos

      t.timestamps
    end
  end
end
