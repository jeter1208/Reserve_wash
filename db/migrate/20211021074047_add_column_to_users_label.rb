class AddColumnToUsersLabel < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :brand, :string
    add_column :reserves, :type, :string
  end
end
