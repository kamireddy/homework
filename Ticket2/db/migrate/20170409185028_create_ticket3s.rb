class CreateTicket3s < ActiveRecord::Migration[5.0]
  def change
    create_table :ticket3s do |t|
      t.string :name
      t.integer :age
      t.text :address
      t.string :email
      t.text :address1

      t.timestamps
    end
  end
end
