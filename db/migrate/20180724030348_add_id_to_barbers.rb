class AddIdToBarbers < ActiveRecord::Migration[5.1]
  def change
    add_column :barbers, :id, :integer
  end
end
