class AddBarberToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :barber, :boolean, default: false
  end
end
