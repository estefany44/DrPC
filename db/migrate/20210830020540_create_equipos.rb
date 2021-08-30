class CreateEquipos < ActiveRecord::Migration[6.0]
  def change
    create_table :equipos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
