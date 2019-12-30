class RenameBookstoresToBooks < ActiveRecord::Migration[6.0]
  def change
  	 rename_table :bookstores, :books
  end
end
