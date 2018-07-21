class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :haircut
      t.integer :user_id
      t.integer :barber_id
      t.string :barber_id_name
      t.belongs_to :user, index: true
      t.belongs_to :barber, index: true

      t.timestamps #null: false
    end
    add_foreign_key :appointments, :barbers, column: :barber_id_name
    add_foreign_key :barbers, :name, column: :barber_id_name # A/B test
    add_foreign_key :appointments, :users, column: :user_id
    add_index :barbers, :barber_id
    add_index :users, :user_id
  end

end
