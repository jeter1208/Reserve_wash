class AddColumStatusAndRemarkToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :status, :string
    add_column :reserves, :remark, :string
  end
end
