class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :haircut
      t.references :user_id
      t.references :barber_id

      t.timestamps
    end
  end
end
