class AddColumnDatermineTimeToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :determine_time, :datetime
  end
end
