class RemoveColumnToBook < ActiveRecord::Migration[6.0]
  def change
	remove_column :books, :EmailAddress
  end
end
