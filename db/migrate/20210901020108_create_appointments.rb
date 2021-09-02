class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description
      t.string :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
