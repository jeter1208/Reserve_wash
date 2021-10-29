class AddSlugToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :slug, :string
    add_index :reserves, :slug, unique: true
  end
end
