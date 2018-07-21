class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :time
      t.string :haircut
      # t.integer :user_id (not sure if I need. Test with and without it blocked out)
      # t.integer :barber_id, index: true
      t.references :barber, :name, foreign_key: true
      # t.string :user_name
      # t.references :user, index: true
      t.references :barbers, index: true

      t.timestamps #null: false
      add_column :appointments, :barber_id,
      add_column :appointments, :barber_name,
      add_index :appointments, :barber_name,
    end
    add_column :appointments, :barber_id,
    add_column :appointments, :barber_name,
    add_index :appointments, :barber_name,
  end

end
