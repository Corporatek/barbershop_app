class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :name
      t.integer :chair

      t.timestamps
    end
  end
end
