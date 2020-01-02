class AddAuthorToAuthordetails < ActiveRecord::Migration[6.0]
  def change
  		add_reference :authordetails, :author, foreign_key: true
  end
end
