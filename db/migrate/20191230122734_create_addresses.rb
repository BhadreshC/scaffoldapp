class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :author_address
      t.string :user_address

      t.timestamps
    end
  end
end
