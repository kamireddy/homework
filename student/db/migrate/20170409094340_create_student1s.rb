class CreateStudent1s < ActiveRecord::Migration[5.0]
  def change
    create_table :student1s do |t|
      t.string :name
      t.string :address
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
