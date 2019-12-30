class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :bookstores, :author, :author_name
  end
end
