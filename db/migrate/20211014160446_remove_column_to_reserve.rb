class RemoveColumnToReserve < ActiveRecord::Migration[6.1]
  def change
    remove_column :reserves, :ame, :string
    add_column :reserves, :name, :string
  end
end
