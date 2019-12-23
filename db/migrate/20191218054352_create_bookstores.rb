class CreateBookstores < ActiveRecord::Migration[6.0]
  def change
    create_table :bookstores do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.integer :publishedyear
      t.integer :ISBN
      t.string :EmailAddress , :text 
      t.timestamps
    end
  end
end
