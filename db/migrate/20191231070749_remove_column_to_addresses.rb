class RemoveColumnToAddresses < ActiveRecord::Migration[6.0]
  def change
  	remove_column :addresses, :author_address
  	remove_column :addresses, :user_address
  end
end
