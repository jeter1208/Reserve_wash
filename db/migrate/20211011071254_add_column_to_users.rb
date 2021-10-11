class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :appointment, :datetime
    add_column :users, :cellphone, :integer
    add_column :users, :telephone, :integer
  end
end
