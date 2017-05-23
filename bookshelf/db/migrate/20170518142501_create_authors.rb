class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.integer :Book_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
