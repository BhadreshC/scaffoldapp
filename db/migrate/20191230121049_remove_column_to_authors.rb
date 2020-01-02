class RemoveColumnToAuthors < ActiveRecord::Migration[6.0]
  def change
  	remove_column :authors, :address
  	remove_column :authors, :email
  	remove_column :authors, :mobile_no
  	remove_column :authors, :author_bio
  end
end
