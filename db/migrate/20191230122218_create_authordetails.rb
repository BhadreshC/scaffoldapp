class CreateAuthordetails < ActiveRecord::Migration[6.0]
  def change
    create_table :authordetails do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.string :mobile_No

      t.timestamps
    end
  end
end
