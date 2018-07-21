class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      # t.string :haircut
      # t.integer :user_id (not sure if I need. Test with and without it blocked out)
      # t.integer :barber_id, index: true
      t.string :barber_name
      # t.string :user_name
      t.references :user, index: true
      t.references :barber, index: true

      t.timestamps #null: false
    end
    add_index :appointments, ["user_id"], name: "index_appointments_on_user_id"
    # add_index :appointments, ["barber_id"], name: "index_appointments_on_barber_id"

  end

end
