class AddReferenceToBook < ActiveRecord::Migration[6.0]
  def change
  	add_reference :bookstores, :author, foreign_key: true

  end
end
	