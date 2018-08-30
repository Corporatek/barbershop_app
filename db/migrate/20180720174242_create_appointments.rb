class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :haircut
      t.references :user, index: true, foreign_key: true, null: false
      t.references :barber, index: true, foreign_key: true, null:false

      t.timestamps null: false
    end
  end

end
