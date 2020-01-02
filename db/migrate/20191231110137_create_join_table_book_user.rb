class CreateJoinTableBookUser < ActiveRecord::Migration[6.0]
  def change
    create_join_table :Books, :Users do |t|
     
      #t.index [:book_id, :user_id]
      #t.index [:user_id, :book_id]
    end
  end
end
	