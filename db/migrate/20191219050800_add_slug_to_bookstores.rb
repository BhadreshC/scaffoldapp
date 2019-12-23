class AddSlugToBookstores < ActiveRecord::Migration[6.0]
  def change
  	add_column :bookstores, :slug, :string
  end
end
