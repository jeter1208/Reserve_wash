class ChangeColumnDefaultFromReserveStatus < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:reserves, :status, '待確認')
  end
end
