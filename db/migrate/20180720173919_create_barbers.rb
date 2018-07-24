class CreateBarbers < ActiveRecord::Migration[5.1]
  def change
    create_table :barbers do |t|
      t.string :name
      t.integer :chair
      t.has_many :appointments, index: true
      t.has_many :users, through: :appointments, index: true
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      # add_index :barbers, :user_id, :integer


      # t.timestamps null: false
    end
  end
end
