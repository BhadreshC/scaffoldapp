class AddAuthordetailsToAuthors < ActiveRecord::Migration[6.0]
  def change
 	add_column :authors, :email, :string
 	add_column :authors, :mobile_no, :string
 	add_column :authors, :author_bio, :string
   end
end
