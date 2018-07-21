class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :name
      t.integer :chair
      t.has_many :appointments, index: true
      t.has_many :users, through: :appointments, index: true

      t.timestamps null: false
    end
  end
end
