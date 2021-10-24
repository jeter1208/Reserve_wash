class AddDeletedAtToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :deleted_at, :datetime
    add_index :reserves, :deleted_at
  end
end
