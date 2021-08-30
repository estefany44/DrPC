class CreatePagos < ActiveRecord::Migration[6.0]
  def change
    create_table :pagos do |t|
      t.date :fecha
      t.time :hora
      t.string :transaccion

      t.timestamps
    end
  end
end
