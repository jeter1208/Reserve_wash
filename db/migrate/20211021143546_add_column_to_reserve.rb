class AddColumnToReserve < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :genre, :string
  end
end
