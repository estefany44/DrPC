class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|
      t.date :fechas
      t.time :hora_inicio
      t.time :hora_fin
      t.boolean :status
      t.references :reserva, null: false, foreign_key: true

      t.timestamps
    end
  end
end
