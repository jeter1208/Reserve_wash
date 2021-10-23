class RenameColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :reserves, :type, :genre
  end
end
