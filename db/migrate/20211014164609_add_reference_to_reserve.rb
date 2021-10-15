class AddReferenceToReserve < ActiveRecord::Migration[6.1]
  def change
    add_reference(:reserves, :user, index: true)
  end
end
