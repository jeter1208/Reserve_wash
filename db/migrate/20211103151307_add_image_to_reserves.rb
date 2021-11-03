class AddImageToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :image, :string
  end
end
