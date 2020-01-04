class AddLanguageToBook < ActiveRecord::Migration[6.0]
  def change
  	 	add_column :books, :language, :string
  end
end
