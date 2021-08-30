class CreateOts < ActiveRecord::Migration[6.0]
  def change
    create_table :ots do |t|
      t.string :diagnostico
      t.string :solucion
      t.integer :valor
      t.date :fecha_entrega
      t.references :marca, null: false, foreign_key: true
      t.references :equipo, null: false, foreign_key: true
      t.string :serie
      t.boolean :status
      t.references :reserva, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
