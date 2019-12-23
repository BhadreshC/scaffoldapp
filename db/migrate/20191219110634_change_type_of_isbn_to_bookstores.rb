class ChangeTypeOfIsbnToBookstores < ActiveRecord::Migration[6.0]
  def change
  	change_column :bookstores, :ISBN, :string
  end
end
