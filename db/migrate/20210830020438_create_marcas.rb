class CreateMarcas < ActiveRecord::Migration[6.0]
  def change
    create_table :marcas do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
