class RemoveColumnToBookss < ActiveRecord::Migration[6.0]
  def change
  	remove_column :books, :author_name
  end
end
