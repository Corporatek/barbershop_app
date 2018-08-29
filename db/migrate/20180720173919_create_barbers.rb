class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :name
      t.integer :chair
      t.references :appointments, index: true
      t.references :user, index: true, foreign_key: true, null: false

      # add_index :barbers, :user_id, :integer


      # t.timestamps null: false
    end
  end
end
