class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.string :ame
      t.string :email
      t.string :address
      t.string :cellphone
      t.string :telephone

      t.timestamps
    end
  end
end
