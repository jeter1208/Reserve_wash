class AddColumnToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :appointment ,:datetime
  end
end
